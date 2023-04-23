const String getCollectiblesByOwnerQuery = r'''
  query getCollectiblesByOwner($owner: String!) {
      collectibles(where: {owner: $owner}) {
        id
        name
        imageURL
        description
        collectionName
        collectionSymbol
        collectionAddress
      }
  }
''';

const String getAccountByAddress = r'''
  query getCollectiblesByOwner($address: String!) {
      account(id: $address) {
        id
        address
        collectibles {
          id
          created
          tokenId
          description
          descriptorUri
          name
          imageURL
          creator {
            id
          }
          owner {
            id
          }
          collection {
            collectionName
            collectionSymbol
            collectionAddress
          }
        }
      }
  }
''';
