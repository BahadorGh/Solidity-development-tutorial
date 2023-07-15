//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyEvents {
    event SUM1(address sender, uint sum, string message);

    function mySum(uint _num1, uint _num2) public {
        uint sum = _num1 + _num2;
        emit SUM1(msg.sender, sum, "done");
    }
}