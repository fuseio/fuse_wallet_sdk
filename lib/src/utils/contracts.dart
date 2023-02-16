import 'dart:typed_data';

import 'package:charge_smart_wallets_sdk/src/utils/abis.dart';
import 'package:charge_smart_wallets_sdk/src/utils/crypto.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

class ContractsHelper {
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
