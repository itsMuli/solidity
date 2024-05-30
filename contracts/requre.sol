// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    string public name;

    constructor(string memory _name) {
        require(bytes(_name).length > 10, "Name cannot be empty");
        name = _name;
    }

    function notFive(uint256 x) public pure returns (uint256) {
        require(x != 5, "five is not valid");
        return x * 2;
    }
}
