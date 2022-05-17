# Smart Contracts
This project contains basic proofs of concept for the creation and deployment of smart contracts on the Ethereum or LAAChain network.

## Requirements

- [Node js](https://nodejs.org/)
- [Truffle](https://trufflesuite.com/truffle/)
- [Ganache](https://trufflesuite.com/ganache/) or [LACChain Docker](https://github.com/lacchain/lacchain-docker) (Requires manual installation and configuration)
- [Metamask](https://metamask.io/)
- Code Editor (Examples [VS Code](https://visualstudio.microsoft.com/es/), [Sublime](https://www.sublimetext.com/), [Atom](https://atom.io/), etc.)
- Bash

## Structure Project

## Before running the project

- Install truffle

    `$ npm install truffle -g`

- Run Ganache and quickstart Ethereum workspace

<img src="https://user-images.githubusercontent.com/52359896/168884502-284064e1-8bb6-4d5d-86ff-67218092a20a.png" width="500" />



## Run Project

- Deploy contracts in network
  
    `$ truffle migrate --reset --network development`

## Testing

It is important to keep in mind that when you work with blockchain technologies, smart contracts and web 3.0, almost always every action you carry out carries a cost in the cryptocurrency of the network. that is why it is always recommended to test your contracts in the development environment before deploying your contracts to a productive network like Ethereum

- Run test
  
    `$ truffle test --network development`
## Considerations

