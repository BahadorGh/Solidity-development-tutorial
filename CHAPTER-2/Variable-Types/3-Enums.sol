//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enum {
    enum Weekdays {
    Saturday,
    Sunday,
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday
    }

    Weekdays public day;

    function selectMonday() public {
        day = Weekdays.Monday;
    }
}