// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract MySample {
    
uint256 sum = 10 + 20; 

uint256 x = 4;
uint256 y = 5;
uint256 anotherSum = x * y; 

// Function to get the value of sum
    function getSum() public view returns (uint256) {
        return sum;
    }

    // Function to get the value of anotherSum
    function getAnotherSum() public view returns (uint256) {
        return anotherSum;
    }

    // Function to set new values for x and y, and update anotherSum
    function setValues(uint256 _x, uint256 _y) public {
        x = _x;
        y = _y;
        anotherSum = x * y; // Update anotherSum with new values
    }
}

