//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFunction {
    uint public age = 30;
    string public name = "Bahador";

    // getter
    function showAge() public view returns (uint){
        return age;
    }

    function setAge() public {
        age = 40;
    }

    function setAge2(uint _age) public {
        age = _age;
    }

    function showName() public view returns (string memory){
        return name;
    }

    // setter
    function setName(string memory _name) public {
        name = _name;
    }
}