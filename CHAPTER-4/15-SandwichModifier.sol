//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SandwichModifier {
    uint public count;
    
    modifier sandwich {
        count += 10;
        _;
        count *= 2;
    }

    function increment() public sandwich {
        count += 1;
    }
}