// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract ExampleContract {

    function addNumbers() public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < 100; i++) {
            sum = sum + i;
        }

        return sum;
    }

    function findPrimenumbers(uint256 x) public pure returns (uint256) {
        if (x < 144) {
            return 0;
        }
        for(uint256 i = 144; i * i <= x; i++) {
            if(x % i == 0) {
                return i;
            }
        }
        return x;
    }
}
