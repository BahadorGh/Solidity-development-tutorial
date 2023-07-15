//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SetAge {
    function setAge(uint _age) public pure returns (string memory) {
        return _age < 10? "You are child!": "Ey vay!";
    }
}