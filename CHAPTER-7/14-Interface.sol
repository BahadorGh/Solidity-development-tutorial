//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint public count;
    
    function increment() external {
        count += 1;
    }
}

interface ICounter {
    function count() external view returns (uint);
    function increment() external;
}

contract MyContract {
    address counterContract;

    constructor(address _counterContract) {
        counterContract = _counterContract;
    }

    function incrementCounter() external {
        ICounter(counterContract).increment();
    }

    function getCount() external view returns (uint) {
        return ICounter(counterContract).count();
    }
}