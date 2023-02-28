import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://chargeweb3.com
  final String publicApiKey = '';
  print('privateKey: $privateKey');
  print('address: ${credentials.address.hexEip55}');
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final DC<Exception, String> authRes = await fuseWalletSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print("Error occurred in authenticate");
    print(authRes.error);
  } else {
    final DC<Exception, SmartWallet> walletData = await fuseWalletSDK.fetchWallet();

    final tokenListData = await fuseWalletSDK.explorerSection.getTokenList(
      walletData.data!.smartWalletAddress,
    );
    tokenListData.pick(
      onData: (TokenList tokenList) {
        print('tokenList ${tokenList.result}');
      },
      onError: (err) {
        print(err);
      },
    );

    final String usdcAddressOnFuse =
        '0x620fd5fa44BE6af63715Ef4E65DDFA0387aD13F5';

    final tokenDetailsData =
        await fuseWalletSDK.explorerSection.getTokenDetails(
      usdcAddressOnFuse,
    );

    tokenDetailsData.pick(
      onData: (TokenDetails tokenList) {
        // Do you magic here
      },
      onError: (err) {
        // Handle errors
      },
    );

    final tokenBalanceData =
        await fuseWalletSDK.explorerSection.getTokenBalance(
      Variables.NATIVE_TOKEN_ADDRESS,
      walletData.data!.smartWalletAddress,
    );
    tokenBalanceData.pick(
      onData: (BigInt value) {
        print('value $value');
      },
      onError: (err) {
        print(err);
      },
    );
  }
}
