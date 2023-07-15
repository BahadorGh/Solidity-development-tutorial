//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyRevert {
    uint public maxAge;

    constructor(uint _maxValidAge) {
        maxAge = _maxValidAge;
    }
    
    function setAge(uint _age) public {
        if(_age >= maxAge) {
            // code
            revert("Please enter lower age");
            }
        maxAge = _age;
    }
}