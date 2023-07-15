//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyConstructor {
    // Constructor --> مقداردهی اولیه به قرارداد
    uint public age;
    address public owner;

    constructor(uint _age) {
        age = _age;
        owner = msg.sender;
    }
}