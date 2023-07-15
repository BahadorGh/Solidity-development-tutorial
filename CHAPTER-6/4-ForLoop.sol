//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForLoop {
    uint public sum;

    function forLoop(uint _counter) public {
        for(uint i = 0; i < _counter; i++) {
            sum = sum + i;
        }
    }
}