//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractA {
    uint private number;

    constructor() payable {

    }

    function getNumber() public view returns (uint) {
        return number;
    }
    
    function setNumber(uint _number) public {
        number = _number;
    }
}

contract ContractB {
    address anotherContract;

    function setAnotherContract(address _anotherContract) external {
        anotherContract = _anotherContract;
    }

    function UseExistingAddress() public returns (uint) {
        ContractA obj = ContractA(anotherContract);
        obj.setNumber(10);
        return obj.getNumber();
    }
}