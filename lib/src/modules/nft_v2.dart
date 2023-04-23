import 'package:fuse_wallet_sdk/src/models/account/account.dart';
import 'package:gql/language.dart';
import 'package:graphql/client.dart';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';
import 'package:fuse_wallet_sdk/src/utils/queries.dart';

class NftModuleV2 {
  final GraphQLClient _graphQLClient;

  /// Creates an instance of [NftModule] with the given NFT subgraph URL.
  ///
  /// [nftSubgraph] is the NFT subgraph URL. Defaults to [https://api.thegraph.com/subgraphs/name/fuseio/fuse-nft-v2].
  NftModuleV2({
    String nftSubgraph = Variables.NFT_SUB_GRAPH_URL_V2,
  }) : _graphQLClient = GraphQLClient(
          link: HttpLink(nftSubgraph),
          cache: GraphQLCache(),
        );

  /// Retrieves the collectibles owned by a specified address.
  ///
  /// [owner] is the owner's address.
  ///
  /// Returns a [Future] that resolves to a [DC] containing either an [OperationException] or a [Map] of collectibles.
  Future<DC<OperationException?, Account>> getErc721(
    String address,
  ) async {
    QueryResult result = await _graphQLClient.query(
      QueryOptions(
        document: parseString(getAccountByAddress),
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: <String, dynamic>{
          'address': address.toLowerCase(),
        },
      ),
    );
    if (result.hasException) {
      return DC.error(result.exception);
    } else {
      return DC.data(Account.fromJson(result.data?['account']));
    }
  }
}
