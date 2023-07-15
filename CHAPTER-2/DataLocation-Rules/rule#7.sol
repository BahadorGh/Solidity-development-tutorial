//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageTomemoryValueTypeAssignment {
    uint stateVar = 10;
    function getUInt() public returns (uint) {
        uint localVar = 20;
        localVar = stateVar;
        stateVar = 30;
        return localVar; // returns 10
    }
}

contract StorageToMemoryReferenceTypeAssignment {
    uint[2] stateArray3 = [1, 2];
    function getUInt() public returns (uint) {
        uint[2] memory localArray = stateArray3;
        stateArray3[1] = 5;
        return localArray[1]; // returns 2
    }
}