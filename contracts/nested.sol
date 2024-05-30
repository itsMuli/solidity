// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract ExampleContract {

    function containsAThree(uint256[][] calldata nestedArray) public pure returns (bool) {

        for (uint256 i = 0; i < nestedArray.length; i++) {
            for (uint256 j = 0; j < nestedArray[0].length; j++) {
                if (nestedArray[i][j] == 3) {
                    return true;
                }
            }
        }
        return false;
    }
}