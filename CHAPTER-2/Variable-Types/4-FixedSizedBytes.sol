//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedSizeBytes {
    bytes1 aa = 0x65;
    bytes1 bb = 'a';
    bytes2 cc = 0x1234;
    bytes7 public name = "Bahador";
    bytes32 public value3 = name;

    function getbyteaa() public view returns (uint8) {
        return uint8(aa); //returns 0x65
    }

    function getbytebb() public view returns (uint8) {
        return uint8(bb); //returns 0x65
    }

    function getbytecc() public view returns (uint16) {
        return uint16(cc); //returns 0x65
    }
    
    function showSumBytes() public pure returns(bytes2) {
        uint16 value222 = uint16(255);
        uint16 value333 = uint16(255);
        uint16 sum = uint16(value222 + value333);
        return bytes2(sum);
    }
}