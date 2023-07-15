//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract B {
    string public family;

    constructor(string memory _family) {
        family = _family;
    }
}

contract C is A("Input name"), B("Input family") {}

contract D is A, B {
    constructor(
        string memory _name,
        string memory _family)
        A(_name) B(_family) {}  
}

contract E is A("Input name"), B {
    constructor(string memory _family) B(_family) {}
}