//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Escrow {
    address public recruiter;
    address payable public freelancer;

    uint public amount;
    uint public matureTime;

    enum Status { AWAITING_PAYMENT, AWAITING_DELIVERY, DELIVERED,
    ACCEPTED, COMPLETED }

    Status public curStatus;

    event FundDeposited(address indexed _recruiter, uint _amount);
    event ProjectDelivered(address indexed _freelancer, uint _time);
    event ProjectCompleted(address indexed _recruiter, address indexed _freelancer, uint
    _amount, uint _time);

    modifier onlyFreelancer() {
        require(msg.sender == freelancer, "access restricted to freelancer");
        _;
    }

    modifier onlyRecruiter() {
        require(msg.sender == recruiter, "access restricted to recruiter");
        _;
    }

    constructor(address _recruiter, address _freelancer, uint _amount, uint _duration) {
        recruiter = _recruiter;
        freelancer = payable(_freelancer);
        amount = _amount;
        matureTime = block.timestamp + _duration;
    }

    /**
    * @dev Deposit fund to the Escrow contract by the Recruiter
    */
    function deposit() public payable onlyRecruiter(){
        require(msg.value >= amount, "deposit at least the escrow fund");
        curStatus = Status.AWAITING_DELIVERY;
        emit FundDeposited(msg.sender, msg.value);
    }

    /**
    * @dev Freelancer Deliver Project to the Escrow Contract
    * @return bool
    */
    function deliverProject() public onlyFreelancer() returns(bool) {
        require(curStatus == Status.AWAITING_DELIVERY, "project not funded");
        require(block.timestamp >= matureTime, "project not mature");
        curStatus = Status.DELIVERED;
        emit ProjectDelivered(msg.sender, block.timestamp);
        return true;
    }

    /**
    * @dev Recruiter Accepts Project delivered by the freelancer
    * @return bool
    */
    function acceptProject() public onlyRecruiter() returns(bool) {
        require(curStatus == Status.DELIVERED, "project not delivered");
        curStatus = Status.ACCEPTED;
        return true;
    }

    /**
    * @dev Freelancer Withdraws the Escrow Fund and marks the project as completed
    */
    function withdrawEscrowFund() public onlyFreelancer() {
        require(curStatus == Status.ACCEPTED, "project not accepted");
        (bool sent,) = freelancer.call{value: amount}("");
        require(sent, "Failed to send Escrow Fund");
        curStatus = Status.COMPLETED;
        emit ProjectCompleted(recruiter, freelancer, amount, block.timestamp);
    }
}