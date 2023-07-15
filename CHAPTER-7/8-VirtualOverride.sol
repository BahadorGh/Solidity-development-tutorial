//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    function showMsg() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    // Override A.showMsg()
    function showMsg() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // Override A.showMsg()
    function showMsg() public pure override returns (string memory) {
        return "C";
    }
}