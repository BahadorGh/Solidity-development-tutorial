//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransferETH {
    constructor() payable {}

    function sendViaTransfer(address payable _to) public payable {
        bool sent = _to.send(1);
        require(sent, "Sending failed");
    }

    function sendByTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }
}