//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    // تعریف و مقداردهی اولیه یک متغیر 
    // while(condition) {
        // code
        // increment counter variable
    // }

contract WhileLoop {
    uint public sum;

    function whileLoop() public {
        uint counter = 0;
        while(counter < 10) {
            sum = sum + counter;
            counter = counter + 1;
        }
    }
}