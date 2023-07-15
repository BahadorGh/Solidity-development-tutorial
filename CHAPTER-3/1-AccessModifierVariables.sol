//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessModifierVariables {
    uint num1 = 5;
    uint public num2 = 10;
    uint private num3 = 15;
    uint internal num4 = 20;

    function getNum1() public view returns (uint) {
        return num1;
    }
    
    function getNum3() public view returns (uint) {
        return num2;
    }
    
    function getNum4() public view returns (uint) {
        return num2;
    }
}