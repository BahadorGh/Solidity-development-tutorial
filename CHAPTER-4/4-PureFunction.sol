//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PureFunction {
    // Pure Function --> نه از بلاکچین بخوان و نه بر روي بلاکچین بنویس
    function makeSum(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 + _num2;
    }
}