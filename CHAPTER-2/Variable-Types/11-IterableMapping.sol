//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IterateMapping {
    uint id;
    mapping(uint => address) users;

    function addUser(address userDetail) public {
        id +=1;
        users[id] = userDetail;
        // mapping(uint => address) storage localuser = user;
    }

    // خواندن مقدار مپینگ
    function getUser(uint _id) public view returns (address) {
        return users[_id];
    }
    
    // خواندن مقدار چند مپینگ
    function getUsers() public view returns (address[] memory) {
        address[] memory localBytes = new address[](id);
        for(uint i=1;i <= id; i++) {
        localBytes[i-1] = users[i];
        }
        return localBytes;
    }
}