//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

error InvalidAgeAmount(uint sentAge, uint maxValidAge);

contract MyRevert {
    uint public maxAge;

    constructor(uint _maxValidAge) {
        maxAge = _maxValidAge;
    }

    function setAge(uint _age) public {
        if(_age >= maxAge) {
            // code
            revert InvalidAgeAmount ({
                sentAge: _age,
                maxValidAge: maxAge
            });
        }
        maxAge = _age;
    }
}