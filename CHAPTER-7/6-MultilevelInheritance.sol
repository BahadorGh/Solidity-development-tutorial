//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint internal number1 = 5;
}
    
contract B is A {
    uint internal number2 = 10;

    function showNumber2() public view returns (uint) {
        return number2;
    }
}

contract C is B {
    uint public sum;

    function makeSum() public {
        sum = number1 + number2;
    }
}