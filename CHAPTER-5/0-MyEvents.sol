//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyEvents {
    event SUM(address, uint, string);

    function mySum(uint _num1, uint _num2) public {
        uint sum = _num1 + _num2;
        emit SUM(msg.sender, sum, "done");
    }
}