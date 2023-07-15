//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Sender {
    
    function sendBySend(address payable _receiver) public payable {
        bool sent = _receiver.send(msg.value);
        require(sent,"Sending failed");
    }

    function sendByCall(address payable _receiver) public payable {
        (bool sent,) = _receiver.call{gas: 50000, value: msg.value}("");
        require(sent,"Sending failed");
    }
}