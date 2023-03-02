import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://developers.fuse.io
  final String publicApiKey = '';
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final DC<Exception, String> authRes = await fuseWalletSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print("Error occurred in authenticate");
    print(authRes.error);
  } else {
    final walletData = await fuseWalletSDK.fetchWallet();

    walletData.pick(
      onData: (SmartWallet smartWallet) async {
        // Relay subscriptions
        fuseWalletSDK.on('transactionStarted', (eventData) {
          print('transactionStarted ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionHash', (eventData) {
          print('transactionHash ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionSucceeded', (eventData) {
          print('transactionSucceeded ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionFailed', (eventData) {
          print('transactionFailed ${eventData.toString()}');
        });

        final StakeRequestBody stakeRequestBody = StakeRequestBody(
          accountAddress: smartWallet.smartWalletAddress,
          tokenAmount: 'TOKEN_AMOUNT',
          tokenAddress: "TOKEN_ADDRESS",
        );
        // Sending a gasless transaction
        await fuseWalletSDK.stakeToken(
          credentials,
          stakeRequestBody,
        );
      },
      onError: (Exception exception) async {
        print('Fetch wallet failed, wallet was not created yet');
        print('creating...');
        // Create Wallet subscriptions
        fuseWalletSDK.on('smartWalletCreationStarted', (eventData) {
          print('smartWalletCreationStarted ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionHash', (eventData) {
          print('transactionHash ${eventData.toString()}');
        });
        fuseWalletSDK.on('smartWalletCreationSucceeded', (eventData) {
          print('smartWalletCreationSucceeded ${eventData.toString()}');
        });
        fuseWalletSDK.on('smartWalletCreationFailed', (eventData) {
          print('smartWalletCreationFailed ${eventData.toString()}');
        });

        // Create Wallet
        await fuseWalletSDK.createWallet();
      },
    );
  }
}
