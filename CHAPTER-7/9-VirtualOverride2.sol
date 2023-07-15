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
    function showMsg() public pure virtual override returns (string memory) {
        return "C";
    }
}

contract D is B, C {
    // returns "C"
    // مقدار سمت راستی ترین والد برگردانده خواهد شد 
    function showMsg() public pure override(B, C) returns (string memory) {
        return super.showMsg();
    }
}

contract E is C, B {
    // returns "B"
    // مقدار سمت راستی ترین والد برگردانده خواهد شد 
    function showMsg() public pure override(C, B) returns (string memory) {
        return super.showMsg();
    }
}

contract F is A, B {
    function showMsg() public pure override(A, B) returns (string memory) {
        return super.showMsg();
    }
}