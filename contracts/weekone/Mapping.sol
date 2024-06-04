// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;


contract ExampleContract {

    mapping(uint256 => mapping(uint256 => uint256)) public myMapping;

    function setMapping(uint256 key, uint256 key2, uint256 value) public {
        myMapping[key][key2] = value;
    }

    function getValue(uint256 key, uint256 key2) public view returns (uint256) {
        return myMapping[key][key2];
    }
}