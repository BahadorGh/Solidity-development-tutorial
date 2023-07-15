//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyConditions {
    // Conditions --> if / if else / else
    uint public age;

    function setAge(uint _age) public returns (string memory) {
        if(_age < 10) {
            age = _age;
            return "You are child!";
        } else if (_age >= 10 && _age <= 30) {
            age = _age;
            return "You are young!";
        } else {
            return "Ey vay!";
        }
    }
}