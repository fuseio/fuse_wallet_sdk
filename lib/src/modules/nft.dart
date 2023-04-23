import 'package:gql/language.dart';
import 'package:graphql/client.dart';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';
import 'package:fuse_wallet_sdk/src/utils/queries.dart';

@Deprecated('Use the new NFT module instead')
class NftModule {
  final GraphQLClient _graphQLClient;

  /// Creates an instance of [NftModule] with the given NFT subgraph URL.
  ///
  /// [nftSubgraph] is the NFT subgraph URL. Defaults to [https://api.thegraph.com/subgraphs/name/fuseio/fuse-nft].
  NftModule({
    String nftSubgraph = Variables.NFT_SUB_GRAPH_URL,
  }) : _graphQLClient = GraphQLClient(
          link: HttpLink(nftSubgraph),
          cache: GraphQLCache(),
        );

  /// Retrieves the collectibles owned by a specified address.
  ///
  /// [owner] is the owner's address.
  ///
  /// Returns a [Future] that resolves to a [DC] containing either an [OperationException] or a [Map] of collectibles.
  Future<DC<OperationException?, Map<String, Map<int, Collectible>>>>
      getCollectiblesByOwner(
    String owner,
  ) async {
    QueryResult result = await _graphQLClient.query(
      QueryOptions(
        document: parseString(getCollectiblesByOwnerQuery),
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: <String, dynamic>{
          'owner': owner.toLowerCase(),
        },
      ),
    );
    if (result.hasException) {
      return DC.error(result.exception);
    } else {
      List<dynamic> fetchedCollectibles = result.data?['collectibles'];
      Map<String, Map<int, Collectible>> collectibles =
          Map<String, Map<int, Collectible>>.from(
        fetchedCollectibles.fold(
          {},
          (previousValue, collectible) {
            final String tokenId = (collectible['id'] as String).split('-')[1];
            final String collectionAddress = collectible['collectionAddress'];
            final Collectible col = Collectible.fromJson({
              ...collectible,
              'id': tokenId,
            });
            previousValue[collectionAddress] = Map<int, Collectible>.from({
              int.parse(tokenId): col,
              ...Map<int, Collectible>.from({
                ...?previousValue[collectionAddress],
              })
            });
            return Map<String, Map<int, Collectible>>.from(previousValue);
          },
        ),
      );
      return DC.data(collectibles);
    }
  }
}
