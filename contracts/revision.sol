// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract HelloWorld{
    string public name;
    string public symbol;

    mapping (address => uint256) public balanceOf;
    address public owner;

    uint256 public totalsupply;

    constructor(string memory _name, string memory _symbol){
        name = _name;
        symbol = _symbol;
        owner = msg.sender;
    } 

    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "ony owner can create tokens");
        totalsupply += amount;
        balanceOf[owner] += amount;
    }
    
    function transfer(address to, uint256 amount) public {
        require(balanceOf[msg.sender] >= amount, "You aint rich");
        require(to != address(0), "cannot send t address(0");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }
}