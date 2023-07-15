//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyRequire {
    uint public age;

    function setAge(uint _age) public {
        require(_age <= 120,"Age must be lower than 120 years!");
        age = _age;
    }
}