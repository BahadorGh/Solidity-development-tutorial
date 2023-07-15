//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageToStorageValueTypeAssignment {
    uint num1 = 10;
    uint num2 = 20;
    function getUInt() public returns (uint) {
        num1 = num2;
        num2 = 30;
        return num1; // returns 20
    }
}

contract StorageToStorageReferenceTypeAssignment {
    uint[2] stateArray1 = [1, 2];
    uint[2] stateArray2 = [3, 4];
    function getUInt() public returns (uint)
    {
        stateArray1 = stateArray2;
        stateArray2[1] = 5;
        return stateArray1[1]; // returns 4
    }
}