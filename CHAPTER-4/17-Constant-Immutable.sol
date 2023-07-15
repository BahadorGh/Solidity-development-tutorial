//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConstantImmutable {
    uint constant public age = 20;
    uint immutable public phoneNumber;
    address immutable public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    constructor() {
        phoneNumber = 123;
    }
}