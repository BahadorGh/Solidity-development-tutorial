//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NonPayableFunction {
    // View, Pure
    uint public age;

    function setAge(uint _age) public {
        age = _age;
    }
}