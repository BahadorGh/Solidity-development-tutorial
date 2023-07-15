//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendETH {
constructor() payable {}

    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(1);
        require(sent, "Sending failed");
    }

    function sendBySend(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require(sent,"Failed to send asset");
    }
}