//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Sender {
    function sendBySend(address payable _receiver) public payable {
        bool sent = _receiver.send(msg.value);
        require(sent,"Sending failed");
    }

    function sendByCall(address payable _receiver) public payable {
        (bool sent,) = _receiver.call{gas: 50000, value: msg.value}(
            abi.encodeWithSignature("sayHello()")
        );
        require(sent,"Sending failed");
    }
    }

contract Receiver {
    uint public balance = 0;
    event Receive(uint value);

    function sayHello() public payable returns (string memory) {
        return "Hello My Friend!";
    }

    receive () payable external{
        emit Receive(msg.value);
        balance += msg.value;
    }
}