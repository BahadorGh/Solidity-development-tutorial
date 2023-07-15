//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InputModifier {
    uint public count;

    modifier cap(uint _x) {
    // require(_x < 100);
        if(_x <100) {
            _;
        }
    }

    function incrementBy(uint _x) public cap(_x) {
        count += _x;
    }
}