//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionIn {
    uint public age;
    string public name;

    function setAge(uint _age) public {
        age = _age;
    }

    function setName(string memory _name) public {
        name = _name;
    }
}