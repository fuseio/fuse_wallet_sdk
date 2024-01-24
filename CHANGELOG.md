## [0.2.18]

### Changed
- Upgrade dependencies.

## [0.2.17]

### Fixed
- Get balance for native token.

## [0.2.16]

### Changed
- Upgrade dependencies.

## [0.2.15]

### Changed
- Instead of retrieving the ERC-20 information from the explorer, it now fetches it directly via RPC

## [0.2.14]

### Added
- Introduced a new property to the `txOptions` object, `customNonceKey`, which gives account holders greater control over the semi-abstracted nonce system.

## [0.2.13]

### Fixed
- Use a lock to ensure only one execution accesses the nonce at a time.

## [0.2.12]

### Added
- Introduced a new property, `useNonceSequence`, to `TxOptions` for facilitating the use of two-dimensional nonces.

## [0.2.11]

### Added
- An expired property to the `StakingOption` model. This property indicates whether the staking option has expired or not.

## [0.2.10]

### Changed
- Increased the default `feePerGas` setting to 10 Gwei.

## [0.2.9]

### Fixed
- Fixed an issue that causes getting 404 status code while getting
native token balance for newly created ERC-4337 wallets.

## [0.2.8]

### Added
- The `from` and `to` fields are now available in `TokenEvent` instances. 

## [0.2.7]

### Added
- The Websocket server url can now be provided into the SDK.
- The `createWallet` method has been brought back along with
its corresponding example `create_wallet.dart`.

## [0.2.6]

### Fixed
- The receive wallet actions are parsed correctly.

### Changed
- The default `gasLimit` used in the legacy SDK is now `700000`.

## [0.2.5]

### Added
- Get wallet actions of the ERC-4337 - Account Abstraction wallets.

### Changed
- The base URL can now be provided into the SDK. With this, you can get early access to features
that are not yet available in production.

## [0.2.4]

### Changed
- Upgraded to the latest version of userop.
- The details of the userop is printed to the console before sending it.

## [0.2.3]

### Fixed
- Transfer NFT method was fixed.

## [0.2.2+1]

### Fixed
- Swap VoltToken to Fuse native token.


## [0.2.2]

### Changed
- Upgrade `userop` - It now uses the latest EtherspotWalletFactory contract.

## [0.2.1]

### Fixed
- Transfer NFT method was fixed.

## [0.2.0]

### Changes
- **Breaking Change:** Revamped the entire SDK infrastructure. 
  - Smart Wallets are now 4337 compliant.
  - Transitioned to using the new API set.

## [0.1.2]

### Changed
- Upgrade dependencies.

## [0.1.1]

### Added
- Introduced `tvl` (total value locked) property in the `StakingOption` model.
- Added `stakingApr` property to the `StakedToken` model.
- Enhanced `getHistoricalActions` by introducing limit query parameter, enabling clients to retrieve more items per page.
  
## [0.1.0+2]

### Fixed
- `Collectible` serialization

## [0.1.0+1]

### Fixed
- `Collectible` `fromJson` function 

## [0.1.0]

### Changed
- **Breaking:** Introduced a new NFT module for fetching non-fungible tokens (ERC-721) on FUSE network.

## [0.0.17]

### Added
- Expose a function to reconnect to the websocket when app goes to the foreground.

## [0.0.16]

### Changed
- Added more properties to `ActionResult` model. 

## [0.0.15]

### Changed
- Expose `ContractsUtils` for clients.

## [0.0.14]

### Changed
- Upgrade dependencies: dio & web3dart.

## [0.0.13]

### Added
- Expose a function to disconnect from the websocket when a application goes to the background.

## [0.0.12]

### Fixed
- Resolved `unstakeToken`

## [0.0.11]

### Fixed
- Resolved `webSocketConnection` already been initialized issue

## [0.0.10]

### Fixed
- Resolved `FormatException` issue

## [0.0.9]

### Added
- Return `WalletAlreadyExistsException` from createWallet

## [0.0.8]

### Fixed
- ABI reader fixed

## [0.0.7]

### Fixed
- JSON serialization for the `Action` model

## [0.0.6]

### Fixed
- Resolved issue with `getTokenBalance` function in `ExplorerModule`

### Added
- Introduced `ExplorerModule.getABI` function - Retrieves the contract ABI for a given contract address.

### Changed
- **Breaking:** Sections renamed to Modules

## [0.0.5]

### Added
- Added comprehensive documentation to the package, making it easier for users to understand and use the package effectively.
- Introduced a new model `ActionResult` which provides information on the next page of actions, the next page number, and a list of actions.

## [0.0.4]

### Changed
- Replaced custom `EventEmitter` extension with the built-in `Stream` class for improved compatibility and maintainability.
- Added a `getBalance` function to allow users to retrieve token balances directly from the blockchain.

## [0.0.3]

(No changes in this version)

## [0.0.2]

### Added
- Implemented historical transactions functionality to enable users to access and analyze past transactions.

## [0.0.1]

- Initial release of the package.
