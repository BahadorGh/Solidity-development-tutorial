//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base {
    uint internal number;
    
    function setNumber(uint _value) external {
        number = _value;
    }
}

contract Derived is Base {
    bool private status;

    function setNumber() public view returns (uint) {
        return number;
    }
}

contract SingleInheritance {
    Derived baseContractObj = new Derived();
    
    function workWithInheritance() public returns (uint) {
        baseContractObj.setNumber(10);
        return baseContractObj.setNumber();
    }
}