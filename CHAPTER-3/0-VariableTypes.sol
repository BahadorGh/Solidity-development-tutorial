//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableTypes {
    // 3 types of variables in solidity:
    /*
        1- state
        2- local
        3- global
    */

    // state variable --> stored on blockchain(smart contract storage) - most expensive
    uint public age = 30;
    string public name = "bahador";
    bool public status = true;

    // global variables --> provide information from blockchain
    uint public timestamp = block.timestamp; // Search this on google ---> epoch converter
    address public whoIsSender = msg.sender;
    uint public assetValue = msg.value;
    address public myContractAddress = address(this); //0xd9145CCE52D386f254917e481eB44e9943F39138

    // local variable -> not stored on blockchain(cheap) - function scope
    function myFunction() public pure {
        uint phoneNumber = 123456;
        bool myStatus = false;
    }
}