<p align="center">                    
<img  src="https://raw.githubusercontent.com/fuseio/fuse_wallet_sdk/master/art/fuse_wallet_sdk_logo.svg" height="170">                    
</p>                    

<p align="center">                    
<a href="https://img.shields.io/badge/License-MIT-green"><img src="https://img.shields.io/badge/License-MIT-green" alt="MIT License"></a>                  
<a href="https://pub.dev/packages/fuse_wallet_sdk"><img src="https://img.shields.io/pub/v/fuse_wallet_sdk.svg?label=pub&color=orange" alt="pub version"></a>
</p>

- [Introduction](#introduction)
  - [Benefits of using Fuse Wallet SDK](#benefits-of-using-fuse-wallet-sdk)
  - [Purpose of the SDK](#purpose-of-the-sdk)
- [Migration guides](#migration-guides)
- [Instantiation](#instantiation)
  - [Examples](#examples)
    - [Get Address](#get-address)
    - [Send transactions](#send-transactions)
    - [Approve token](#approve-token)
    - [Retry mechanism](#retry-mechanism)
    - [Send batch transactions](#send-batch-transactions)
    - [Staking](#staking)
    - [Unstake](#unstake)
    - [Trading](#trading)
- [Features](#features)
    - [Get Address](#get-address-1)
    - [Send transactions](#send-transactions-1)
    - [Send batch transactions](#send-batch-transactions-1)
    - [Sponsored Transactions](#sponsored-transactions)
    - [Staking](#staking-1)
    - [Trading](#trading-1)
- [Troubleshooting](#troubleshooting)
- [Limitations](#limitations)
- [Migrating to v0.2](#migrating-to-v02)
    - [Introduction](#introduction-1)
    - [Prerequisites](#prerequisites)
    - [Detailed Migration Steps](#detailed-migration-steps)

## Introduction

The Fuse Wallet SDK is a set of tools for creating, managing, and engaging with Fuse Wallet SDK in client applications. Fuse Wallet SDK lets users create smart contract wallets([Based on ERC-4337](https://eips.ethereum.org/EIPS/eip-4337)) associated with each user's Externally Owned Account (EOA) that provide added security compared to traditional EOAs with a single private key. With Fuse Wallet SDK, users can deposit funds that no one else can control and withdraw at any time.

### Benefits of using Fuse Wallet SDK
Using Fuse Wallet SDK provides several benefits, including:

- **Enhanced security**: Fuse Wallet SDK are non-custodial accounts that allow users to deposit funds that no one else can control and withdraw at any time. Each Fuse Smart Wallet is a smart contract associated with the user's EOA and can only be controlled by that user.
- **Enhanced UX**: Fuse Wallet SDK support gasless transactions, improving the user experience and making it more seamless to interact with the blockchain.
- **Better developer experience**: The Fuse Wallet SDK abstracts away the complexities of web3 development, such as cryptography, wallet management, and smart contract interactions, making it easier for developers to build blockchain-based applications

### Purpose of the SDK

The SDK is designed to make it easy for developers to create, manage, and engage with Fuse Wallet SDK in their applications. The SDK provides pre-built functions and utilities, allowing developers to interact with Fuse Wallet SDK securely and efficiently.

## Migration guides

- [Migrating to v0.2](#migrating-to-v0.2)

## Instantiation

```dart
import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';
final apiKey = 'YOUR_PUBLIC_API_KEY';
final privateKey = EthPrivateKey.fromHex('YOUR_PRIVATE_KEY');
final fuseSDK = await FuseSDK.init(apiKey, privateKey);
```

### Examples

#### [Get Address](./example/address.dart)

#### [Send transactions](./example/transfer.dart)

#### [Approve token](./example/approve_token.dart)

#### [Retry mechanism](./example/retry_feature.dart)

#### [Send batch transactions](./example/batch_transactions.dart)

#### [Staking](./example/stake_tokens.dart)

#### [Unstake](./example/unstake_tokens.dart)

#### [Trading](./example/swap_tokens.dart)


## Features

The Fuse Wallet SDK provides several features that allow developers to create, manage, and engage with Fuse Wallet SDK in their applications. Some of the key features include:

#### Get Address

Gets the address of the wallet created.

```dart
print('Smart contract wallet address: ${fuseSDK.wallet.getSender()}');
```

#### Send transactions

Send transactions, including ERC20 and NFT transfers and interaction with arbitrary smart contracts.

```dart
final res = await fuseSDK.transferToken(
    EthereumAddress.fromHex('TOKEN_ADDRESS'), // For sending native token, use '0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE'
    EthereumAddress.fromHex('RECIPIENT_ADDRESS'),
    BigInt.parse('AMOUNT_IN_WEI'),
);
print('UserOpHash: ${res.userOpHash}');
print('Waiting for transaction...');
final ev = await res.wait();
```

#### Send batch transactions

The process of grouping multiple transactions into a single batch to be processed together. This is often done to optimize processing time and reduce transaction fees.

```dart
final res = await fuseSDK.executeBatch(
  [
    // Transfer Native Token call
    Call(
      to: EthereumAddress.fromHex('TARGET_ADDRESS'),
      value: BigInt.parse('AMOUNT_IN_WEI'),
      data: Uint8List(0),
    ),
    // Transfer ERC-20 Token call
    Call(
      to: EthereumAddress.fromHex('TOKEN_ADDRESS'),
      value: BigInt.zero,
      data: ContractsHelper.encodedDataForContractCall(
        'ERC20',
        'TOKEN_ADDRESS',
        'transfer',
        [
          EthereumAddress.fromHex('RECIPIENT_ADDRESS'),
          BigInt.parse('AMOUNT_IN_WEI'),
        ],
        include0x: true,
      ),
    ),
  ],
);

print('UserOpHash: ${res.userOpHash}');

print('Waiting for transaction...');
final ev = await res.wait();
print('Transaction hash: ${ev?.transactionHash}');
```

#### Sponsored Transactions

Sponsored transactions are the ability to pay for another user’s transaction fees. To do this, the Fuse operator must enable the sponsored feature in his project and deposit some funds into the paymaster contract. The SDK provides a middleware to check if the project is sponsored and the amount of funds available for sponsoring.

To use this feature, you must first initialize the SDK with the `withPaymaster` parameter set to `true`.

```dart
import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';
final apiKey = 'YOUR_PUBLIC_API_KEY';
final privateKey = EthPrivateKey.fromHex('YOUR_PRIVATE_KEY');
final fuseSDK = await FuseSDK.init(apiKey, privateKey, withPaymaster: true);
```

#### Staking

The SDK provides a module for staking. This module allows users to stake their tokens and earn rewards.

Currently, the SDK supports staking for the following tokens: Native Fuse & VoltToken

```dart

final stakingOptions = await fuseSDK.stakingModule.getStakingOptions();

final res = await fuseSDK.stakeToken(
  StakeRequestBody(
    accountAddress: fuseSDK.wallet.getSender(),
    tokenAmount: '0.1',
    tokenAddress: '0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE',
  ),
);
```

#### Trading

Smart Wallet can buy and sell popular cryptocurrencies like Bitcoin and Ethereum, Stable-coins. Behind the scenes, it uses [voltage.finance](https://voltage.finance/) decentralized exchange.

```dart
final nativeTokenAddress = '0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE';
final usdcTokenAddress = '0x620fd5fa44be6af63715ef4e65ddfa0387ad13f5';

final res = await fuseSDK.swapTokens(
  TradeRequestBody(
    amountIn: '0.1',
    currencyIn: nativeTokenAddress,
    currencyOut: usdcTokenAddress,
    recipient: fuseSDK.wallet.getSender(),
  ),
);
```

## Troubleshooting

1. **User op cannot be replaced: fee too low.**

   If you're getting the `User op cannot be replaced: fee too low` error, it means that the gas price you set is too low. You can increase the gas price by setting the `TxOptions` parameter when sending a transaction. To replace an user operation, a new user operation must have at least 10% higher `maxPriorityFeePerGas` and 10% higher `maxPriorityFeePerGas` than the one in the user operation mempool.

To replace the user operation, the new gas price must be at least 10% higher.

```dart
final res = await fuseSDK.transferToken(
    EthereumAddress.fromHex('TOKEN_ADDRESS'),
    EthereumAddress.fromHex('RECIPIENT_ADDRESS'),
    BigInt.parse('AMOUNT_IN_WEI'),
    FuseSDK.defaultTxOptions.copyWith(
      feePerGas: '2000000',
      withRetry: true,
      feeIncrementPercentage: 11,
    ),
);
print('UserOpHash: ${res.userOpHash}');
print('Waiting for transaction...');
final ev = await res.wait();
```

## Limitations

The Fuse Wallet SDK works only on the Fuse & Fuse Sparknet networks, an EVM based chain L1 blockchain. Support for other blockchains is planned for the future.

If you have any questions or feedback, please get in touch with our support team at support@fuse.io.

## Migrating to v0.2

#### Introduction

Welcome to the updated version of the `fuse_wallet_sdk`. Our primary objective for this migration is to seamlessly align our services with the evolving landscape of EVM-based chains. We are thrilled to introduce the incorporation of the new standard, EIP 4337, commonly known as "Account Abstraction". This latest protocol promises to enhance security, provide more consistent developer experiences, and offer improved user interactions in Ethereum-based environments.

**Major Changes at a Glance**:

- **Seamless Smart Wallet Creation**: Gone are the days where we required an API request to the Fuse APIs to craft a smart wallet. With the renewed `fuse_wallet_sdk`, initiation not only sets the SDK in motion but also seamlessly creates a smart wallet for the given owner. This elevates user experience, reduces developer friction, and augments transactional efficiency.

As we navigate through the details of this migration, we hope to provide you with a clear roadmap, making the transition as straightforward as possible. Embracing the future of Ethereum-based chains has never been this effortless.

#### Prerequisites

Before embarking on this migration journey with the new `fuse_wallet_sdk`, the process is made delightfully simple for our users. However, there's a minimal requirement you should be aware of:

- **API Key**: The only prerequisite to utilize the updated SDK is to have a valid API key. If you haven't create one yet or need a new one, don't fret! Simply head over to our Developer's Console at https://developers.fuse.io/ and follow the straightforward steps to obtain your key.

With your API key in hand, you're all set to integrate and experience the enhanced capabilities of the `fuse_wallet_sdk`.

#### Detailed Migration Steps

**Initialization and Smart Wallet Creation**

1. **Locate the Old Initialization**:
Start by finding your old SDK initialization in your code. This is typically where you have the `FuseWalletSDK` instantiation.
2. **Remove Wallet Creation Steps**:
In the old SDK, there were multiple steps involved in creating a smart wallet, including authenticating the credentials, creating a wallet, and handling the creation events. These steps are now greatly simplified in the new SDK.
    
    Identify and remove the following sections from your old SDK code:
    
    - The authentication step: `await fuseWalletSDK.authenticate(credentials);`
    - The wallet creation step: `await fuseWalletSDK.createWallet();`
    - The entire `onSmartWalletEvent` function and its associated event listening code.
3. **Update SDK Initialization**:
Replace the old initialization:
    
    ```dart
    final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
    ```
    
    with the new one:
    
    ```dart
    final fuseSDK = await FuseSDK.init(publicApiKey, credentials);
    ```
    
4. **Access the Smart Contract Wallet Address**:
In the new SDK, you can obtain the smart contract wallet address directly after initialization. Replace the older method:
    
    ```dart
    print('Smart contract wallet address: ${fuseWalletSDK.smartWallet.smartWalletAddress}');
    ```
    
    with the simplified new version:
    
    ```dart
    print('Smart contract wallet address: ${fuseSDK.wallet.getSender()}');
    
    ```
    

By following the steps above, developers can smoothly transition to the new SDK and take advantage of the more streamlined and simplified process provided by the update. It’s worth noting that the migration not only reduces the lines of code but also enhances clarity and reduces complexity, resulting in a more efficient and cleaner integration process.

In summary, the new SDK code provides a more structured, modular, and extensive set of functions to interact with FuseBox. It allows for a broader range of operations, from basic token transfers to more complex operations like staking and swapping tokens. The design considerations (like separating modules) make the SDK more maintainable and scalable.
