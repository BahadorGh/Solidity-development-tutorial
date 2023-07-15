//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MakeSum {
    function makeSum(uint256 number1, uint256 number2) public pure {
        uint sum;
        sum = number1 + number2;
    }

    function showFunctionSelector() public pure returns(bytes4) {
        return bytes4(keccak256(bytes("makeSum(uint256,uint256)")));
    }
}