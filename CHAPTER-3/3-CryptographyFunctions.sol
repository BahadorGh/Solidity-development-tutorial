//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CryptographyFunctions {

    function makeHash() public pure returns (bytes32, bytes32){
        return (keccak256("bahador"), sha256("bahador"));
    }
}