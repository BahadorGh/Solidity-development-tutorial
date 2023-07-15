//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DoWhile {
    uint public sum;

    function doWhileLoop() public {
        uint counter = 0;
        do {
            sum = sum + counter;
            counter = counter +1;
        } while(counter < 10);
    }
}