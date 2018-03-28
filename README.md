# ethereum-smart-contract-My-learning-notes
ethereum smart contract My learning notes

### 1. Online portal to practice smart contract
http://remix.ethereum.org

Write code in editor...

<img src="./pics/a_complie_contract.JPG" width="300" height="200" />
Hit "Start to compile" in "Compile" tab, in between to validate code.

<img src="./pics/b_complie_contract.JPG" width="300" height="200" />
To deploy contract on blockchain, select name of the contarct from drop down and hit "Create" from "Run" tab.

<img src="./pics/c_publish_contract_on_blockchain.JPG" width="300" height="200" />
You will see the contract deployed and ready to execute...

<img src="./pics/d_execute_contract.JPG" width="300" height="200" />
Do watch the debug messages for better understanding.

<img src="./pics/e_debuging_execution_logs.JPG" width="300" height="200" />


### Ethereum Natural Specification Format
https://github.com/ethereum/wiki/wiki/Ethereum-Natural-Specification-Format


### 2. Geth
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

```

### 3. My learning resources
https://github.com/magonicolas/Ethereum-Solidity
https://www.youtube.com/watch?v=kWZ_XLZ61yg

https://www.youtube.com/watch?v=aV8C77xAaQA
https://www.youtube.com/watch?v=289EzMOHYnQ
https://www.youtube.com/watch?v=Li0Loy8VRp4
https://github.com/turboprep/geth-tutorial/tree/master/voting2

https://www.youtube.com/watch?v=V457ca7nxgU
https://www.youtube.com/watch?v=qChbuhCQBBg

https://ethereum.github.io/browser-solidity/#optimize=false&version=soljson-v0.4.21+commit.dfe3193c.js


### TODO
Run contract on private blockchain with Geth.
Build Custom logic for validations.

