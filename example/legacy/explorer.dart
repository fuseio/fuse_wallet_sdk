import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://developers.fuse.io
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
    final exceptionOrWallet = await fuseWalletSDK.fetchWallet();

    final tokenListData = await fuseWalletSDK.explorerModule.getTokenList(
      exceptionOrWallet.data!.smartWalletAddress,
    );
    tokenListData.pick(
      onData: (TokenList tokenList) {
        print('tokenList ${tokenList.result}');
      },
      onError: (err) {
        print(err);
      },
    );

    final abiData = await fuseWalletSDK.explorerModule.getABI(
      '0x2B3113B752645dfAFCe690706b5eCAd9d83977CF',
    );
    abiData.pick(
      onData: (String abi) {
        print(abi);
      },
      onError: (err) {
        print(err);
      },
    );

    final String usdcAddressOnFuse =
        '0x620fd5fa44BE6af63715Ef4E65DDFA0387aD13F5';

    final tokenDetailsData = await fuseWalletSDK.explorerModule.getTokenDetails(
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

    final tokenBalanceData = await fuseWalletSDK.explorerModule.getTokenBalance(
      Variables.NATIVE_TOKEN_ADDRESS,
      exceptionOrWallet.data!.smartWalletAddress,
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
