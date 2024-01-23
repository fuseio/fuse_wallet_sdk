import 'package:test/test.dart';
import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';
import 'package:mockito/mockito.dart';
import 'package:web3dart/web3dart.dart';
import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() {
  group('_getNativeBalance', () {
    late FuseSDK fuseSDK;

    setUp(() {
      // Initialize the FuseSDK instance with a public API key
      fuseSDK = FuseSDK('publicApiKey');
    });

    test('should return the native Ether balance of the address', () async {
      // Mock the web3 client and set the expected balance
      final mockWeb3Client = MockWeb3Client();
      final expectedBalance = BigInt.from(1000000000000000000);
      when(mockWeb3Client.getBalance(any)).thenAnswer((_) async => expectedBalance);

      // Set the mock web3 client for the FuseSDK instance
      fuseSDK.wallet.proxy.client = mockWeb3Client;

      // Call the _getNativeBalance method with a test address
      final address = EthereumAddress.fromHex('0x1234567890abcdef');
      final balance = await fuseSDK._getNativeBalance(address);

      // Verify that the balance matches the expected balance
      expect(balance, equals(expectedBalance));

      // Verify that the balance matches the expected balance
      expect(balance, equals(expectedBalance));
    });

    test('should return zero if the address has no native Ether balance', () async {
      // Mock the web3 client and set the expected balance to zero
      final mockWeb3Client = MockWeb3Client();
      final expectedBalance = BigInt.zero;
      when(mockWeb3Client.getBalance(any)).thenAnswer((_) async => expectedBalance);

      // Set the mock web3 client for the FuseSDK instance
      fuseSDK.wallet.proxy.client = mockWeb3Client;

      // Call the _getNativeBalance method with a test address
      final address = EthereumAddress.fromHex('0x1234567890abcdef');
      final balance = await fuseSDK._getNativeBalance(address);

      // Verify that the balance is zero
      expect(balance, equals(expectedBalance));
    });

    test('should throw an exception if an error occurs during balance retrieval', () async {
      // Mock the web3 client to throw an exception
      final mockWeb3Client = MockWeb3Client();
      when(mockWeb3Client.getBalance(any)).thenThrow(Exception('Failed to retrieve balance'));

      // Set the mock web3 client for the FuseSDK instance
      fuseSDK.wallet.proxy.client = mockWeb3Client;

      // Call the _getNativeBalance method with a test address
      final address = EthereumAddress.fromHex('0x1234567890abcdef');

      // Verify that an exception is thrown
      expect(() => fuseSDK._getNativeBalance(address), throwsException);
    });
  });
}
