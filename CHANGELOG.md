# CHANGELOG

## [0.0.14]

### Changed
- Upgrade dependencies: dio & web3dart.

## [0.0.13]

### Added
- Expose a function to disconnect from the websocket when a application goes to the background

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
