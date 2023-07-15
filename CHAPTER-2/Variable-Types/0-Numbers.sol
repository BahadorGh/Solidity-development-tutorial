//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Integers {
    // uint
    // 0 >= max8Bits < ((2 ** 8) - 1)
    uint8 public max8Bits = 255;
    // 0 >= max16Bits < ((2 ** 16) - 1)
    uint16 public max16Bits = type(uint16).max;
    // 0 >= max256Bits < ((2 ** 256) - 1)
    uint256 public max256Bits = type(uint256).max;
    // 0 >= maxUintBits < ((2 ** 256) - 1)
    uint public minUintBits = type(uint).min;
    
    // int
    // (- 2 ** 7) >= max8BitsInt < ((2 ** 7) - 1)
    int8 public max8BitsInt = 127;
    // (- 2 ** 15) >= max16BitsInt < ((2 ** 15) - 1)
    int16 public max16BitsInt = type(int16).max;
    // (- 2 ** 255) >= max256BitsInt < ((2 ** 255) - 1)
    int256 public max256BitsInt = type(int256).max;
    // (- 2 ** 255) >= maxIntBits < ((2 ** 255) - 1)
    int public minIntBits = type(int256).min;
}