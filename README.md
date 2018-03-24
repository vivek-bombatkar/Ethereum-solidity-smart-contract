# ethereum-smart-contract-My-learning-notes
ethereum smart contract My learning notes

### Online portal to practice smart contract
http://remix.ethereum.org

### Ethereum Natural Specification Format
https://github.com/ethereum/wiki/wiki/Ethereum-Natural-Specification-Format

### My learning resources
https://github.com/magonicolas/Ethereum-Solidity
https://www.youtube.com/watch?v=kWZ_XLZ61yg

https://www.youtube.com/watch?v=aV8C77xAaQA
https://www.youtube.com/watch?v=289EzMOHYnQ
https://www.youtube.com/watch?v=Li0Loy8VRp4
https://github.com/turboprep/geth-tutorial/tree/master/voting2





### Geth
https://geth.ethereum.org/downloads/

Geth is the C L I or command line interface for running a full Ethereum node, also works with windows cmd.

geth console:
```
geth --datadir data --networkid 123 --nodiscover --maxpeers 0 console

personal.new Account
```

1. Geth is used to mine, in other words, to create blocks that are published to the Ethereum blockchain. The miner receives Ethereum currency or "Ether" as a reward for doing so.
```
geth --mine --datadir data --networkid 123 --nodiscover --maxpeers 0 --verbosity 6 console
```

2. Geth is used to create and manage Ethereum accounts. Accounts can store Ether. Geth also lets you transfer Ether between accounts . This transfer of Ether between accounts is known as a transaction.
```
geth --datadir data --networkid 123 --nodiscover --maxpeers 0 account list > output.txt

console > personal.new Account
```

3. Geth is used to create contracts. Contracts can receive transfers just like regular accounts. However, they can also receive more complicated transactions that run code, and optionally, update the state of the contract.



```
console
> loadScript('gethload.js')
> checkAllBalances()
> checkAllBalances()
  eth.accounts[0]:      0x50e663e7eb53bc247210cf61c465d562e0255f58      balance: 0 ether
  Total balance: 0 ether


geth --mine --datadir data --networkid 123 --nodiscover --maxpeers 0 --verbosity 6 console
<<<run for 10 to 15 minutes, then close the CMD and open new>>>

console
> loadScript('gethload.js')
> checkAllBalances()
> checkAllBalances()
  eth.accounts[0]:      0x50e663e7eb53bc247210cf61c465d562e0255f58      balance: 3752.5 ether
  Total balance: 3752.5 ether
  
personal.unlockAccount(eth.accounts[0])  

