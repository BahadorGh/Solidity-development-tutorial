//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PayableFunction {
    // Payable Function --> .توانایی دریافت اتر یا رمز ارز بومی
    mapping(address => uint) public balance;
    address payable public myAddress;

    function getMoney() public {}

    function getFund() public payable {
        balance[msg.sender] += msg.value;
    }
}