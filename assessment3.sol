//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor() ERC20("Yashasvi", "YS") {
        
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }
    function transferTokens(address to, uint256 amount) public  returns (bool) {

        require(amount <= balanceOf(msg.sender), "There is not sufficient balance to transfer!");

        _transfer(msg.sender, to, amount);

        return true;
    }
}
