//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyEvents {
    event SUM3(address indexed sender, uint sum, string message) anonymous;

    function mySum1(uint _num1, uint _num2) public {
        uint sum = _num1 + _num2;
        emit SUM3(msg.sender, sum, "done");
    }
}