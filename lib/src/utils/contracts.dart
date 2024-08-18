import 'dart:typed_data';

import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

import 'package:fuse_wallet_sdk/src/constants/abis.dart';
import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';
import 'package:fuse_wallet_sdk/src/utils/crypto.dart';

/// A utility class providing methods to interact with contracts.
///
/// `ContractsUtils` simplifies tasks such as reading from a contract,
/// encoding data for contract calls, and signing off-chain transactions.
class ContractsUtils {
  /// Reads data from a deployed contract using the specified function and parameters.
  ///
  /// [client] is the web3 client instance to interact with the Fuse network.
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [methodName] is the name of the function to be called.
  /// [params] is a list of parameters to be passed to the function.
  /// [jsonInterface] is an optional JSON string representing the contract ABI.
  ///
  /// Returns a `Future` that resolves to a list of values returned by the contract function.
  static Future<List<dynamic>> readFromContract(
    Web3Client client,
    String contractName,
    EthereumAddress contractAddress,
    String methodName,
    List<dynamic> params, {
    String? jsonInterface,
  }) async {
    final DeployedContract contract = _getDeployedContract(
      contractName,
      contractAddress,
      jsonInterface: jsonInterface,
    );
    return client.call(
      contract: contract,
      function: contract.function(methodName),
      params: params,
    );
  }

  /// Reads data from a specified contract and returns the first result as BigInt.
  ///
  /// [client] - The Web3Client instance to use for reading data.
  /// [contractName] - Name of the contract (for clarity and potentially for use in other functions).
  /// [contractAddress] - Address of the contract.
  /// [methodName] - Name of the method to call on the contract.
  /// [params] - List of parameters to pass to the contract method.
  ///
  /// Returns the first result of the contract call as a BigInt.
  static Future<BigInt> readFromContractWithFirstResult({
    required Web3Client client,
    required String contractName,
    required EthereumAddress contractAddress,
    required String methodName,
    required List<dynamic> params,
  }) async {
    final response = await readFromContract(
      client,
      contractName,
      contractAddress,
      methodName,
      params,
    );
    return response.first as BigInt;
  }

  /// Retrieves the deployed contract instance using the contract name and address.
  ///
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [jsonInterface] is an optional JSON string representing the contract ABI.
  ///
  /// Returns a `Future` that resolves to a `DeployedContract` instance.
  static DeployedContract _getDeployedContract(
    String contractName,
    EthereumAddress contractAddress, {
    String? jsonInterface,
  }) {
    final String abi = jsonInterface ?? ABI.get(contractName);
    final ContractAbi contractAbi = ContractAbi.fromJson(abi, contractName);
    final DeployedContract contract = DeployedContract(
      contractAbi,
      contractAddress,
    );
    return contract;
  }

  /// Encodes data for a contract call using the specified function and parameters.
  ///
  /// [contractName] is the name of the contract.
  /// [contractAddress] is the address of the deployed contract.
  /// [methodName] is the name of the function to be called.
  /// [params] is a list of parameters to be passed to the function.
  /// [jsonInterface] is an optional JSON string representing the contract ABI.
  /// [include0x] is a flag to include the '0x' prefix in the encoded data.
  /// [forcePadLength] is an optional integer to force padding of the output data.
  /// [padToEvenLength] is a flag to pad the output data to an even length.
  ///
  /// Returns a `Future` that resolves to the encoded data as a hex string.
  static String encodedDataForContractCall(
    String contractName,
    EthereumAddress contractAddress,
    String methodName,
    List<dynamic> params, {
    String? jsonInterface,
    bool include0x = false,
    int? forcePadLength,
    bool padToEvenLength = false,
  }) {
    final DeployedContract contract = _getDeployedContract(
      contractName,
      contractAddress,
      jsonInterface: jsonInterface,
    );
    final Uint8List data = contract.function(methodName).encodeCall(params);
    return bytesToHex(
      data,
      include0x: include0x,
      forcePadLength: forcePadLength,
      padToEvenLength: padToEvenLength,
    );
  }

  /// Encodes the data for an ERC20 'transfer' operation.
  ///
  /// [tokenAddress] - Address of the ERC20 token contract.
  /// [recipient] - Address receiving the tokens.
  /// [amount] - Amount of tokens to transfer.
  static Uint8List encodeERC20TransferCall(
    EthereumAddress tokenAddress,
    EthereumAddress recipient,
    BigInt amount,
  ) {
    return _encodeContractCall(
      'ERC20',
      tokenAddress,
      'transfer',
      [recipient, amount],
    );
  }

  /// Encodes the data for an ERC721 'safeTransferFrom' operation.
  ///
  /// [from] - Address sending the NFT.
  /// [nftContractAddress] - Address of the ERC721 token contract.
  /// [to] - Address receiving the NFT.
  /// [tokenId] - ID of the NFT being transferred.
  static Uint8List encodeERC721SafeTransferCall(
    EthereumAddress from,
    EthereumAddress nftContractAddress,
    EthereumAddress to,
    BigInt tokenId,
  ) {
    final params = [from, to, tokenId];
    final jsonInterface =
        '[{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"safeTransferFrom","inputs":[{"type":"address","name":"from","internalType":"address"},{"type":"address","name":"to","internalType":"address"},{"type":"uint256","name":"tokenId","internalType":"uint256"}]}]';

    return _encodeContractCall(
      'ERC721',
      nftContractAddress,
      'safeTransferFrom',
      params,
      jsonInterface: jsonInterface,
    );
  }

  /// Encodes the data for an ERC20 'approve' operation.
  ///
  /// [tokenAddress] - Address of the ERC20 token contract.
  /// [spender] - Address which will be approved to spend the tokens.
  /// [amount] - Amount of tokens to approve.
  static Uint8List encodeERC20ApproveCall(
    EthereumAddress tokenAddress,
    EthereumAddress spender,
    BigInt amount,
  ) {
    return _encodeContractCall(
      'ERC20',
      tokenAddress,
      'approve',
      [spender, amount],
    );
  }

  /// Retrieves detailed information about an ERC20 token.
  ///
  /// This method fetches the name, symbol, and decimals of an ERC20 token using its address.
  /// If the provided [tokenAddress] matches the native token address, it returns a native token with zero amount.
  ///
  /// [tokenAddress] is the address of the ERC20 token.
  ///
  /// Returns a [TokenDetails] object containing the token's name, symbol, decimals, and other relevant details.
  static Future<TokenDetails> getERC20TokenDetails(
    Web3Client web3client,
    EthereumAddress tokenAddress,
  ) async {
    if (tokenAddress.toString().toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return TokenDetails.native(amount: BigInt.zero, decimals: 18);
    }
    final toRead = ['name', 'symbol', 'decimals'];
    final token = await Future.wait(
      toRead.map(
        (function) => ContractsUtils.readFromContract(
          web3client,
          'ERC20',
          tokenAddress,
          function,
          [],
        ),
      ),
    );

    return TokenDetails.fromJson({
      'contractAddress': tokenAddress.toString(),
      'name': token[0].first,
      'symbol': token[1].first,
      'decimals': token[2].first.toString(),
      'balance': '0',
      'type': 'ERC-20'
    });
  }

  /// Encodes the data for an ERC721 'approve' operation.
  ///
  /// [tokenAddress] - Address of the ERC721 token contract.
  /// [spender] - Address which will be approved to spend the tokens.
  /// [amount] - Amount of tokens to approve.
  static Uint8List encodeERC721ApproveCall(
    EthereumAddress tokenAddress,
    EthereumAddress spender,
    BigInt tokenId,
  ) {
    return _encodeContractCall(
      'ERC721',
      tokenAddress,
      'approve',
      [spender, tokenId],
    );
  }

  /// Checks if the given [address] is the native token's address.
  static bool isNativeToken(String address) {
    return address.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase();
  }

  // Internal helper function to reduce repetitive logic
  static Uint8List _encodeContractCall(
    String contractType,
    EthereumAddress contractAddress,
    String methodName,
    List<dynamic> params, {
    String? jsonInterface,
  }) {
    return hexToBytes(
      ContractsUtils.encodedDataForContractCall(
        contractType,
        contractAddress,
        methodName,
        params,
        include0x: true,
        jsonInterface: jsonInterface,
      ),
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
