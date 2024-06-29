# assessment3

This program contains a smart contract which creates a token on a local HardHat network, and then used Remix IDE to interact with it.

## Description

This program contains a simple contract named as Token, which contains a mint function to send ethers to the provided address,  burn function to deduct that amount from the wallet and transfer function to send amount to the provided address.


## Getting Started

### Executing program

To run this program, I have used online Remix Solidity IDE. You can visit the Remix website at https://remix.ethereum.org/ .
Extension used for creating a new file is .sol , example: assessment3.sol

**Compiled contract on local HardHat network on VS Code using code:**

```Hardhat

npx hardhat compile

```

 It is used to compile a Solidity smart contract project using the Hardhat framework. 

 ```Hardhat

npx hardhat node

```

It is used to start a local Ethereum network using Hardhat. It spins up a local blockchain environment with a set of accounts and a simulated Ethereum network. 

SMART CONTRACT CODE:

```solidity

// SPDX-License-Identifier: MIT

```

This line specifies the Software Package Data Exchange (SPDX) license identifier for the contract.In this case, it is the MIT license.

```solidity
pragma solidity ^0.8.0;
```
This line specifies that the Solidity compiler version should be 0.8.0 or higher.


```solidity

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

```

This line imports the ERC20 contract from the OpenZeppelin library. OpenZeppelin provides secure and standard implementations of ERC20 and other Ethereum standards.

```solidity

contract Token is ERC20 { ... }  
  
```

This declares a new contract named Token which extends the ERC20 contract from the OpenZeppelin library. In other words, Token is a custom token contract that inherits the functionality of the ERC20 token.


```solidity

 constructor() ERC20("Yashasvi", "YS") {
    }
  
```

This is the constructor function of the Token contract. It calls the constructor of the inherited ERC20 contract with the name "Yashasvi" and the symbol "YS".
```solidity

 function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
```

This function mint allows any user to create (mint) new tokens. It takes two arguments: to (the address to which the newly minted tokens will be sent) and amount (the number of tokens to mint). The function calls the _mint function provided by the ERC20 contract to perform the minting.

```solidity

 function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }
  
```
This function burn allows any user to destroy (burn) tokens. It takes two arguments: from (the address from which the tokens will be burned) and amount (the number of tokens to burn). The function calls the _burn function provided by the ERC20 contract to perform the burning.

```solidity

function transferTokens(address to, uint256 amount) public  returns (bool) {

        require(amount <= balanceOf(msg.sender), "There is not sufficient balance to transfer!");

        _transfer(msg.sender, to, amount);

        return true;
    }
  
```
This function transferTokens allows any user to transfer tokens to another address. It takes two arguments: to (the recipient address) and amount (the number of tokens to transfer).The next line checks that the sender has enough balance to transfer the specified amount of tokens. If the sender's balance is less than the amount, the transaction will revert with the message "There is not sufficient balance to transfer!".The next line calls the _transfer function provided by the ERC20 contract to transfer the specified amount of tokens from the sender's address (msg.sender) to the recipient's address (to).return true to indicate that the transfer was successful.



## Authors

Yashasvi
[yashasvisharma846@gmail.com]
[22BCS11802@cuchd.in]

## License

This project is licensed under the MIT License - see the License.md file for details.
