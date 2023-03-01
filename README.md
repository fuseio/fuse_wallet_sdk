# Fuse Wallet SDK

# Introduction

The Fuse Wallet SDK is a set of tools for creating, managing, and engaging with Fuse Smart Wallets in client applications. Fuse Smart Wallets are smart contract wallets associated with each user's Externally Owned Account (EOA) that provide added security compared to traditional EOAs with a single private key. With Fuse Smart Wallets, users can deposit funds that no one else can control and withdraw them at any time.

## Purpose of the SDK

The Fuse Wallet SDK is designed to make it easy for developers to create, manage, and engage with Fuse Smart Wallets in their Flutter applications. The SDK provides pre-built functions and utilities that allow developers to seamlessly interact with Fuse Smart Wallets in a secure and efficient manner.

## **Benefits of using Fuse Smart Wallets**

Using Fuse Smart Wallets provides several benefits, including:

- Enhanced security: Fuse Smart Wallets are non-custodial accounts that allow users to deposit funds that no one else can control and withdraw at any time. Each Fuse Smart Wallet is a smart contract associated with the user's EOA and can only be controlled by that user.
- Enhanced UX: Fuse Smart Wallets support gasless transactions, improving the user experience and making it more seamless to interact with the blockchain.
- Better developer experience: The Fuse Wallet SDK abstracts away the complexities of web3 development, such as cryptography, wallet management, and smart contract interactions, making it easier for developers to build blockchain-based applications.

## **Features**

The Fuse Wallet SDK provides several features that allow developers to create, manage, and engage with Fuse Smart Wallets in their applications. Some of the key features include:

- **Create a Fuse Smart Wallet**: Create a new Fuse Smart Wallet associated with a user's EOA.
- **Retrieve an existing Fuse Smart Wallet**: Retrieve an existing Fuse Smart Wallet associated with a user's EOA, if exists.
- **Send transactions**: Send transactions, including ERC20 and NFT transfers and interaction with arbitrary smart contracts, through the Fuse relayer that will cover the gas fees. This allows the user to interact with the blockchain without worrying about gas fees.
- **Retrieve transactions history**: Retrieve a user's transaction history for their Fuse Smart Wallet. This makes it easy to keep track of their activity on the blockchain.
- **Retrieve ERC20 and ERC721 token balances**: Retrieve a user's ERC20 and ERC721 token balances for their Fuse Smart Wallet. This makes it easy to monitor their holdings on the blockchain.
- **Staking**: Let Smart Wallet owners stake their native FUSE tokens directly in the app and earn rewards.
- **Trading**: Let Smart Wallet owners swap various assets, as well as get price data for several assets on Fuse network.
