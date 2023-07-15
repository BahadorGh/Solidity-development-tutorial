//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ContractWithModifier {
    address owner;
    uint public myData;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner {
    // require(msg.sender == owner);
        if(msg.sender == owner) {
            _;
        }
    }
    function mulByTwo(uint _data) public isOwner {
        myData = _data * 2;
    }
    function mulByFive(uint _data) public isOwner {
        myData = _data * 5;
    }
}