# MessageManager Smart Contract

This repository contains a smart contract named `MessageManager`, written in Solidity. It allows users to store, retrieve, and update a message while implementing ownership control to restrict certain actions.

---

## Features

- **Message Storage**: Stores a customizable message on the blockchain.
- **Ownership**: Only the owner of the contract can perform specific actions like updating the message or transferring ownership.
- **Event Logging**: Emits an event whenever the message is updated for better traceability.

---

## Smart Contract Details

### **Core Functions**
1. **`getMessage()`**
   - Returns the currently stored message.
   - Public and viewable by anyone.

2. **`updateMessage(string newMessage)`**
   - Updates the stored message.
   - Restricted to the owner of the contract.

3. **`transferOwnership(address newOwner)`**
   - Transfers the contract ownership to a new address.
   - Ensures the new owner's address is valid.

---

## Example Use Case

This contract is ideal for:
1. **Public Announcements**: Organizations or individuals can use the contract to manage public-facing messages with controlled updates.
2. **Private Notes**: Useful for creating secure, immutable notes for private use.
3. **Education**: A beginner-friendly example to understand Solidity's key features like state variables, events, modifiers, and ownership.

---

## Prerequisites

To interact with the contract, you will need:
1. **Node.js** and **npm**: Install them [here](https://nodejs.org/).
2. **Ethereum Wallet**: A wallet like [MetaMask](https://metamask.io/) to interact with the contract.
3. **Development Environment**: Use one of the following:
   - **Remix**: Online Solidity IDE ([Remix](https://remix.ethereum.org/)).
   - **Hardhat**: Local development environment for Ethereum ([Hardhat](https://hardhat.org/)).
   - **Truffle**: Comprehensive Ethereum development framework ([Truffle](https://trufflesuite.com/)).

---
