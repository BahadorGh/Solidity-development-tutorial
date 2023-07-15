//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultipleModifiers {
    uint public count;
    bool public paused;

    modifier whenNotPaused {
        if(!paused) {
            _;
        }
    }

    modifier cap(uint _x) {
        if(_x <100) {
            _;
        }
    }

    function incrementBy(uint _x) public whenNotPaused cap(_x) {
        count += _x;
    }
}