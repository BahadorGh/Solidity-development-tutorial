//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForLoop {
    event Number(uint);

    function forLoop(uint _counter) public {
        uint sum;
        for(uint i = 0; i < _counter; i++) {
            sum = sum + i;
            if(i== 5)
                break;
            emit Number(i);
        }
    }
}