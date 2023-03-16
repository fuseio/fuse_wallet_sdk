import 'dart:typed_data';

import 'package:fuse_wallet_sdk/src/utils/abis.dart';
import 'package:fuse_wallet_sdk/src/utils/crypto.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

/// A utility class for interacting with Fuse contracts on the Fuse network.
class ContractsHelper {
  /// Reads data from a deployed contract by invoking a specific function.
  ///
  /// [client] is the Web3Client instance to interact with the Fuse network.
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [functionName] is the name of the function to be called.
  /// [params] is a list of parameters to pass to the function.
  /// [jsonInterface] is the optional JSON ABI interface of the contract.
  ///
  /// Returns a list of dynamic values that are the result of the contract function call.
  static Future<List<dynamic>> readFromContract(
    Web3Client client,
    String contractName,
    String contractAddress,
    String functionName,
    List<dynamic> params, {
    String? jsonInterface,
  }) {
    final DeployedContract contract = getDeployedContract(
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

  /// Returns a DeployedContract instance from the given contract information.
  ///
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [jsonInterface] is the optional JSON ABI interface of the contract.
  ///
  /// Returns a DeployedContract instance.
  static DeployedContract getDeployedContract(
    String contractName,
    String contractAddress, {
    String? jsonInterface,
  }) {
    final String abi = jsonInterface ?? ABI.get(contractName);
    final ContractAbi contractAbi = ContractAbi.fromJson(abi, contractName);
    final EthereumAddress address = EthereumAddress.fromHex(contractAddress);
    final DeployedContract contract = DeployedContract(
      contractAbi,
      address,
    );
    return contract;
  }

  /// Encodes data for a contract function call.
  ///
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [functionName] is the name of the function to be called.
  /// [params] is a list of parameters to pass to the function.
  /// [jsonInterface] is the optional JSON ABI interface of the contract.
  /// [include0x] indicates whether to include the '0x' prefix in the result.
  /// [forcePadLength] is the optional padding length to force the result to be.
  /// [padToEvenLength] indicates whether to pad the result to an even length.
  ///
  /// Returns the encoded data as a hex string.

  static String getEncodedDataForContractCall(
    String contractName,
    String contractAddress,
    String functionName,
    List<dynamic> params, {
    String? jsonInterface,
    bool include0x = false,
    int? forcePadLength,
    bool padToEvenLength = false,
  }) {
    final DeployedContract contract = getDeployedContract(
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

  /// Signs an off-chain message for an Fuse transaction.
  ///
  /// [credentials] are the Fuse private key credentials.
  /// [from] is the sender's Fuse address.
  /// [to] is the recipient's Fuse address.
  /// [value] is the amount of Ether to send.
  /// [data] is the transaction payload data as a hex string.
  /// [nonce] is the sender's nonce as a hex string.
  /// [gasPrice] is the gas price for the transaction.
  /// [gasLimit] is the gas limit for the transaction.
  ///
  /// Returns the signed message as a hex string.
  static String signOffChain(
    EthPrivateKey credentials,
    String from,
    String to,
    BigInt value,
    String data,
    String nonce,
    BigInt gasPrice,
    BigInt gasLimit,
  ) {
    final List<String> inputArr = [
      '0x19',
      '0x00',
      from,
      to,
      hexZeroPad(hexlify(value), 32),
      data,
      nonce,
      hexZeroPad(hexlify(gasPrice), 32),
      hexZeroPad(hexlify(gasLimit), 32)
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
