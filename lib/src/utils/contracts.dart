import 'dart:io';
import 'dart:typed_data';

import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

import 'package:fuse_wallet_sdk/src/constants/abis.dart';
import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:fuse_wallet_sdk/src/utils/crypto.dart';

/// A utility class providing methods to interact with contracts.
///
/// `ContractsHelper` simplifies tasks such as reading from a contract,
/// encoding data for contract calls, and signing off-chain transactions.
class ContractsHelper {
  /// Reads data from a deployed contract using the specified function and parameters.
  ///
  /// [client] is the web3 client instance to interact with the Fuse network.
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [functionName] is the name of the function to be called.
  /// [params] is a list of parameters to be passed to the function.
  /// [jsonInterface] is an optional JSON string representing the contract ABI.
  ///
  /// Returns a `Future` that resolves to a list of values returned by the contract function.
  static Future<List<dynamic>> readFromContract(
    Web3Client client,
    String contractName,
    String contractAddress,
    String functionName,
    List<dynamic> params, {
    String? jsonInterface,
  }) async {
    final DeployedContract contract = await _getDeployedContract(
      contractName,
      contractAddress,
      jsonInterface: jsonInterface,
    );
    return client.call(
      contract: contract,
      function: contract.function(functionName),
      params: params,
    );
  }

  /// Retrieves the deployed contract instance using the contract name and address.
  ///
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [jsonInterface] is an optional JSON string representing the contract ABI.
  ///
  /// Returns a `Future` that resolves to a `DeployedContract` instance.
  static Future<DeployedContract> _getDeployedContract(
    String contractName,
    String contractAddress, {
    String? jsonInterface,
  }) async {
    final String abi = jsonInterface ?? ABI.get(contractName);
    final ContractAbi contractAbi = ContractAbi.fromJson(abi, contractName);
    final EthereumAddress address = EthereumAddress.fromHex(contractAddress);
    final DeployedContract contract = DeployedContract(
      contractAbi,
      address,
    );
    return contract;
  }

  /// Encodes data for a contract call using the specified function and parameters.
  ///
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [functionName] is the name of the function to be called.
  /// [params] is a list of parameters to be passed to the function.
  /// [jsonInterface] is an optional JSON string representing the contract ABI.
  /// [include0x] is a flag to include the '0x' prefix in the encoded data.
  /// [forcePadLength] is an optional integer to force padding of the output data.
  /// [padToEvenLength] is a flag to pad the output data to an even length.
  ///
  /// Returns a `Future` that resolves to the encoded data as a hex string.
  static Future<String> encodedDataForContractCall(
    String contractName,
    String contractAddress,
    String functionName,
    List<dynamic> params, {
    String? jsonInterface,
    bool include0x = false,
    int? forcePadLength,
    bool padToEvenLength = false,
  }) async {
    final DeployedContract contract = await _getDeployedContract(
      contractName,
      contractAddress,
      jsonInterface: jsonInterface,
    );
    final Uint8List data = contract.function(functionName).encodeCall(params);
    return bytesToHex(
      data,
      include0x: include0x,
      forcePadLength: forcePadLength,
      padToEvenLength: padToEvenLength,
    );
  }

  /// Signs an off-chain transaction using the provided credentials and transaction data.
  ///
  /// [credentials] is the private key used for signing.
  /// [from] is the address of the sender.
  /// [to] is the address of the receiver.
  /// [data] is the transaction data to be sent.
  /// [nonce] is the nonce of the transaction.
  /// [value] is the optional amount of Ether to be sent.
  /// [gasPrice] is the optional gas price for the transaction.
  /// [gasLimit] is the optional gas limit for the transaction.
  ///
  /// Returns a hex string representing the signed transaction.
  static String signOffChain(
    EthPrivateKey credentials,
    String from,
    String to,
    String data,
    String nonce, {
    BigInt? value,
    BigInt? gasPrice,
    BigInt? gasLimit,
  }) {
    final List<String> inputArr = [
      '0x19',
      '0x00',
      from,
      to,
      hexZeroPad(hexlify(value ?? BigInt.from(0)), 32),
      data,
      nonce,
      hexZeroPad(hexlify(gasPrice ?? BigInt.from(0)), 32),
      hexZeroPad(
          hexlify(gasLimit ?? BigInt.from(Variables.DEFAULT_GAS_LIMIT)), 32)
    ];
    final String input =
        '0x${inputArr.map((hexStr) => hexStr.toString().substring(2)).join('')}';
    final Uint8List messagePayload = keccak256(hexToBytes(input));
    final Uint8List signature = credentials.signPersonalMessageToUint8List(
      messagePayload,
    );
    return bytesToHex(signature, include0x: true);
  }
}
