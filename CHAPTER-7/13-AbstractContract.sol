//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract AbstractContract {
    function GetNumber() public view virtual returns (uint);
    function SetNumber(uint _number) public virtual;
    function AddNumber(uint _number) public virtual returns (uint) {
        return _number;
    }
}

contract ContractA is AbstractContract {
    uint private number;

    function GetNumber() override public view returns (uint) {
        return number;
    }
    function SetNumber(uint _value) override public {
        number = _value;
    }
    function AddNumber(uint _value) override public view returns (uint) {
        return (number + _value);
    }
}

contract ContractB {
    AbstractContract obj;

    constructor() {
        obj = new ContractA();
    }

    function GetIntegerValue() public returns (uint) {
        obj.SetNumber(200);
        return obj.AddNumber(40) + 10;
    }
}