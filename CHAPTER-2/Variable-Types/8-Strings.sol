//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Strings {
    string name = "Bahador Ghadamkheir";

    bytes nameToByte = bytes(name);

    bool public compareNames = keccak256("Bahador") == keccak256("Bahador");
}