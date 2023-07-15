//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicModifier {
    uint public count;
    bool public paused;

    modifier whenNotPaused {
    // require(!paused,"Contract paused");
        if(!paused) {
            _;
        }
    }

    function setPause(bool _paused) public {
        paused = _paused;
    }

    function increment() public whenNotPaused {
        count += 1;
    }

    function decrement() public whenNotPaused {
        count -= 1;
    }
}