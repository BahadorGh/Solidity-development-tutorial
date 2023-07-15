// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract MyTime {
    uint public tNow = block.timestamp; // 1671965118
    uint public tSeconds = 1 seconds; // 1 second
    uint public tMinutes = 10 minutes; // 10 * 60 ==> 600 seconds
    uint public tHours = 1 hours; // (1 * 60 * 60) ==> 3600 seconds
    uint public tDays = 3 days; // (3 * (24 * 3600)) ==> 259.200 seconds
    uint public tWeeks = 4 weeks; // (4 * (7 * (24 * 3600))) ==> 2.419.200 seconds
    uint public threeDaysAfterNow = tNow + 3 days;
}