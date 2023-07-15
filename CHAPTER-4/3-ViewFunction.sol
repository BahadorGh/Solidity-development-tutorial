//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewFunction {
    // View --> خواندن یک مقدار از بلاکچین
    uint age = 30;
    string public name = "bahador";

    // getter
    function showAge() public view returns (uint){
        return age;
    }
}