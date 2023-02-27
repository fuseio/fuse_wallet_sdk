import 'package:gql/language.dart';
import 'package:graphql/client.dart';

import 'package:charge_smart_wallets_sdk/charge_smart_wallets_sdk.dart';
import 'package:charge_smart_wallets_sdk/src/utils/queries.dart';

class NftSection {
  final GraphQLClient _graphQLClient;

  NftSection({
    String nftSubgraph = Variables.NFT_SUB_GRAPH_URL,
  }) : _graphQLClient = GraphQLClient(
          link: HttpLink(nftSubgraph),
          cache: GraphQLCache(),
        );

  Future<Map<String, Map<int, Collectible>>> getCollectiblesByOwner(
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
      throw 'Error! Get Collectibles By Owner request failed - owner: $owner ${result.exception.toString()}';
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
      return collectibles;
    }
  }
}
