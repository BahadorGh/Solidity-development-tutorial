//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionOverloading {
    function getSum(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function getSum(uint a, uint b, uint c) public pure returns (uint) {
        return a + b + c;
    }

    function makeSumWithTwoArg() public pure returns (uint) {
        return getSum(1,2);
    }
    
    function makeSumWithThreeArg() public pure returns (uint) {
        return getSum(1,2,3);
    }
}