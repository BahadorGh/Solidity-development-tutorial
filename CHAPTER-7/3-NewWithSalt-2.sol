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
    function UseNewKeyword(bytes32 _salt) public returns (uint) {
        ContractA obj = (new ContractA){value: 5_000_000_000_000_000_000, salt:
            _salt}();
        obj.setNumber(10);
        return obj.getNumber();
    }
}