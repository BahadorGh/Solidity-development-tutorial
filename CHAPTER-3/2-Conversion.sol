//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Conversion {
    uint8 public smallType = 225;
    uint256 public bigType = 25756254;
    bytes4 public byte4Value = 0x47116606;
    bytes1 public byte1Value = 0x74;

    function implicitConversion() public {
        // تبدیل ضمنی در خط کد پایین امکان پذیر نیست و 
        // باید به صورت ضمنی تبدیل شود 
        //  bytes1 byte1Value = byte4Value;
        // خط کد زیر به صورت ضمنی قابل تبدیل است 
        byte4Value = byte1Value; // Implicit conversion
        bigType = smallType; // Implicit conversion
    }

    function explicitConversion() public {
        byte1Value = bytes1(byte4Value); // Explicit conversion
        smallType = uint8(bigType); // Explicit conversion
    }
}