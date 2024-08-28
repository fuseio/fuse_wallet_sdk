import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');
  // Create a project: https://console.fuse.io/build
  final publicApiKey = '';
  final fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final DC<Exception, String> authRes = await fuseWalletSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print("Error occurred in authenticate");
    print(authRes.error);
  } else {
    await fuseWalletSDK.fetchWallet();
    final tokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
    final tokensData = await fuseWalletSDK.tradeModule.fetchTokens();
    tokensData.pick(
      onData: (List<TokenDetails> tokens) {
        print('tokens list');
        print(tokens.length);
        // Do you magic here
      },
      onError: (err) {
        // Handle errors
      },
    );
    final priceData = await fuseWalletSDK.tradeModule.price(tokenAddress);
    priceData.pick(
      onData: (String tokenPrice) {
        print('tokenPrice');
        print(tokenPrice);
        // Do you magic here
      },
      onError: (err) {
        // Handle errors
      },
    );

    final priceChangeData =
        await fuseWalletSDK.tradeModule.priceChange(tokenAddress);
    priceChangeData.pick(
      onData: (String priceInfo) {
        print('priceInfo');
        print(priceInfo);
        // Do you magic here
      },
      onError: (err) {
        // Handle errors
      },
    );

    final intervalData =
        await fuseWalletSDK.tradeModule.interval(tokenAddress, TimeFrame.week);
    intervalData.pick(
      onData: (List<IntervalStats> stats) {
        print('stats');
        print(stats.length);
        // Do you magic here
      },
      onError: (err) {
        // Handle errors
      },
    );
  }
}
