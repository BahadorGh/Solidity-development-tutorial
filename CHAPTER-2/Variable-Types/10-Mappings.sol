//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    uint id;
    mapping(uint => address) users;

    // مقداردهی به مپینگ 
    function addUser(address userDetail) public {
        id +=1;
        users[id] = userDetail;
    }
    
    // خواندن مقدار مپینگ 
    function getUser(uint _id) public view returns (address) {
        return users[_id];
    }
}