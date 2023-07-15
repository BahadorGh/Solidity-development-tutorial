//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedArray {
    int[5] public age = [int(10),20,30,40,50];
    bytes[4] public live;
    uint[5] public age2;

    function updateAge() public {
        age2 = [10,20,30,40,50];
    }
}