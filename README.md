# SmartContract

Smart contracts are self-executing contracts with the terms of the agreement which acts as replacement for the 3rd party. The code and the agreements contained within the smart contracts exist across a distributed, decentralized blockchain network.

This repository inclues a working example of smart contract build on Ethereum network written in Solidity.

When you clone the repository, the web UI is visible but the transaction won't be successful.
You will need to install the following after cloning the project.
1) Install Metamask as a chrome extention.
   Metamask is an extension for accessing Ethereum enabled distributed applications, or 'Dapps' in your browser. You can read      more about it from https://metamask.io/

2) Install Truffle.
   It a development environment, testing framework and asset pipeline for blockchains using the Ethereum Virtual Machine (EVM).
   Inorder to start transaction or see the mining process, one needs to setup the truffle and run it. You can read more about it from https://truffleframework.com/
   
3) Install Ganache(optional)   
   Ganache is user friendly GUI that quickly helps you see the current status of all accounts, including their addresses,          private keys, transactions and balances.
   https://truffleframework.com/ganache
   
4) To run the project, follow the steps:
    -  Open terminal/ CLI inside the project directory and write $ truffle develop
    -  Paste one of the hash key in the edit text of the web UI.
    -  Open Metamask and choose the Main net . Choose custom RPC and enter the url as http://localhost:9545 . Save it

5) Click on the submit button and you would see a message for a successful transaction along with the transaction ID.
