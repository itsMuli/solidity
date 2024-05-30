// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ERC20 {
    address public banker = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    mapping(address => uint256) public balances;

    event BalanceSet(address indexed owner, uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 amount);

    constructor() {
        // Optionally initialize banker's balance for testing
        balances[banker] = 1000000 * (10 ** 18);
    }

    function setSomeonesBalance(address owner, uint256 amount) public {
        require(msg.sender == banker, "Only the banker can set balances");
        balances[owner] = amount;
        emit BalanceSet(owner, amount);
    }

    function transfer(address receiver, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Transfer(msg.sender, receiver, amount);
    }
}
