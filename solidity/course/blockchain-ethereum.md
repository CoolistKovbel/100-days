# My notes

Going to be notes of the first section

## Blockchain

- a special DB that stores data
- stores a series of block data referencing the previous blockchain
- consists of metadata and transactions
- you can only add data on blockchain, cant modify data
- does not run on a single computer, runs a network of computers called nodes
- any node on blockchain can be a miner that is in competion to solve a mathimatical equation, onces cracked allowed to put the next block on blockchain

## crypto currencies & bitcoin

- blockchain tech has many different use case
- bitcoin allows the transaction of currency between to accounts

## ethereum

- ethereum second generation blockchain allows transaction and computation programming
- ethereum virual machine allows to run small smart contracts on the blockchain
- smart contract had code that excutes on the blockchain
- smart contract cant be stopped
- smart contracts are hard to hack unless there is a bug in the code

## Cryptographic hashes

- transactions are idtified in hash
- hash is a fingerprint that identifies a piece of data
- cryptographic hash is a one way hash, you can go back from hash to data only data to hash
- ethereum uses keccak256 to hash

## ethereum addresses

- ethereum address create with a private key genereated randomly kept like password
- private hashed to generate a public key
- public key hashed computed a finger print using the last 40 char and prefix with 0x
- needed address to recieve ether
- need a private key to sign a transaction and send eth
- address are created using external software called wallets

## wallets

- wallet is a software that manages address
- with a single private key you can create mulitple address

## transactions

- a transaction is a sign package of data that allows you to interact with smart contract
- transactions hold variables:
  - from
  - to
  - gas
  - gas price
  - value {only used if you are sending ether to someone else}
  - data

## smart contracts

- a small program that runs on the ethereum blockchain
- pros:
  - code is imutable
  - consorship-resistant
  - no need for servers
  - very safe if there is no bug
  - easy to transfer money
- cons:
  - expensive to run a smart contract
  - very slow
  - limited capabilites
  - no future scheduling
  - connot call any api outside smart contract

## gas

- used to prevent spamming
- used to rewards miners
- the address that signs the transactions pays gas fee
- gasprice depends on the computation power that is needed to run an operation on the smart contract
- gas is transfered into ethereum to pay for the transaction
