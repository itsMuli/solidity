// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract ExampleContract {
    function callAdd(address source, uint256 x, uint256 y) public returns (uint256) {
        (bool ok, bytes memory result) = source.call(abi.encodeWithSignature("add(uint256,uint256)", x, y));
        require(ok, "call failed");

        uint256 sum = abi.decode(result, (uint256));
        return sum;
    }
}

contract Calc {
    function add(uint256 x, uint256 y) public returns (uint256) {
        return x + y;
    }
}
