//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemoryToMemoryValueTypeAssignment {
    function getUInt() public pure returns (uint) {
        uint localVar1 = 10;
        uint localVar2 = 20;
        localVar1 = localVar2;
        localVar2 = 30;
        return localVar1; // returns 20
    }
}

contract StorageToMemoryReferenceTypeAssignment {
    function getUInt() public pure returns (uint) {
        uint[] memory var1 = new uint[](1);
        var1[0] = 23;
        uint[] memory var2 = var1;
        var1[0] = 45;
        return (var2[0]); //returns 45
    }
}