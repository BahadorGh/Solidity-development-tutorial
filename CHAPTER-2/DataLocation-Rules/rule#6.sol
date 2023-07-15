//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemoryToStorageReferenceTypeAssignment {
    uint[2] stateArray;
    function getUInt() public returns (uint)
    {
        uint[2] memory localArray = [uint(1), 2];
        stateArray = localArray;
        localArray[1] = 10;
        return stateArray[1]; // returns 2
    }
}

contract MemoryToStorageValueTypeAssignment {
    uint stateVar = 20;
    function getUInt() public returns (uint) {
        uint localVar = 40;
        stateVar = localVar;
        localVar = 50;
        return stateVar; // returns 40
    }
}