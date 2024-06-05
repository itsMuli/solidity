// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract AbiEncoding {
    function getEncoding(uint x) public pure returns (bytes memory) {
        return abi.encodeWithSignature("takeOneArg()", x);
    }
    function takeOneArg(uint256 x) public pure returns (bytes memory) {
        return msg.data;
    }
}