//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyAssert {
    uint public maxAge = 120;
    uint public age = 0;
    bool public live = true;

    function checkLive(uint _currentAge) public returns (bool isAlive) {
        age = _currentAge;
        if(age >= maxAge) {
            live = false;
        }
        assert(live);
        return live;
    }
}