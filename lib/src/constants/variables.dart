class Variables {
  Variables._();

  static const NFT_SUB_GRAPH_URL =
      'https://api.thegraph.com/subgraphs/name/fuseio/fuse-nft';
  static const FUSE_CHAIN_ID = 122;
  static const FUSE_RPC_URL = 'https://rpc.fuse.io';
  static const int DEFAULT_GAS_LIMIT = 700000;
  static const String NATIVE_TOKEN_ADDRESS =
      '0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE'; // For sending native (ETH/FUSE) using TransferManager
  static const CHARGE_API = 'https://api.chargeweb3.com/api';
}
