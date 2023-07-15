//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Sender {

    function sendBySend(address payable _receiver) public payable {
        bool sent = _receiver.send(msg.value);
        require(sent,"Sending failed");
    }
    }
    
contract Receiver {
    uint public balance = 0;
    event Receive(uint value);

    receive () payable external{
        emit Receive(msg.value);
        balance += msg.value;
    }
}