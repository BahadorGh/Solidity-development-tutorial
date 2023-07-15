//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractA {
    uint private number;

    function getNumber() public view returns (uint) {
        return number;
    }
    function setNumber(uint _number) public {
        number = _number;
    }
}

contract ContractB {
    function UseNewKeyword() public returns (uint) {
        ContractA obj = new ContractA();
        obj.setNumber(10);
        return obj.getNumber();
    }
}