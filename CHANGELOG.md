# CHANGELOG

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
