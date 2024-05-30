// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract ExampleContract {

	function helloWorld() public pure returns (uint256) {
		return 100;
	}
	
	function haloDunia() public pure returns (bool) {
		return true;
	}

    function iamlate() public pure returns (bool) {
        bool x = true;
        return x;
    }

    function getANumber() public pure returns (string memory) {
        string memory _string = "";
        return _string;
    }

    function getABoolean() public pure returns (bool) {
        bool y = true;
        return y;
    }

    function getAnAddress() public pure returns (address) {
        // Vitalik Buterin's address
        address z = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        return z;
    }

    function getAnotherAddress() public pure returns (address) {
        // address of the USDC stablecoin
        address z2 = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
        return z2;
    }

    
}
