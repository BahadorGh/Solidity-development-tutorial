//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ContractWithoutModifier {
    address owner;
    uint public myData;
    
    constructor() {
        owner = msg.sender;
    }

    function mulByTwo(uint _data) public {
        if (msg.sender == owner) {
            myData = _data * 2;
        }
    }
    function mulByFive(uint _data) public {
        if (msg.sender == owner) {
            myData = _data * 5;
        }
    }
}