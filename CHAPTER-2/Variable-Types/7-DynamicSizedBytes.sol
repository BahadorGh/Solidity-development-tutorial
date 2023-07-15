//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicSizedBytes {
    // dynamic array of bytes
    bytes32 public fixedSizeArray = 'hello';
    bytes public dynamicArrayOfBytes = 'hello';

    function workWithBytes() public {
        uint x = dynamicArrayOfBytes.length; // 5
        dynamicArrayOfBytes.pop();
        dynamicArrayOfBytes.push('p');
        delete dynamicArrayOfBytes[x-1];
        dynamicArrayOfBytes[0] = 'p';
    }
}