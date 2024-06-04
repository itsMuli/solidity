// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Example {
    

    string[] private arr;

    function pushString(string memory str) public {
        arr.push(str);
    }

    function get() public view returns (string[] memory) {
        return arr;
    }
    function getLength() public view returns (uint256) {
        return  arr.length;
    }

    function deleteAtIndex(uint256 index) public {
        require(index < arr.length, "Index out of bounds");

        // Move the last element to the index being deleted
        arr[index] = arr[arr.length - 1];

        // Remove the last element from the array
        arr.pop();
    }
}