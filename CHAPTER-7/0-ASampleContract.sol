//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ASampleContract {

    uint public uintStateVariable;
    string stringStateVariable;
    address person;

    bool constant hasIncome = true;
    enum gender {male, female}

    struct PersonStruct {
        string name;
        uint age;
        bool alive;
        uint[] bankAccountsNumbers;
    }

    PersonStruct human;

    event ageRead(address, uint);

    modifier onlyBy() {
        require(msg.sender == person);
        _;
    }

    function getAge (address _person) external payable onlyBy returns (gender) {
        human = PersonStruct("Bahador", 30, true, new uint[](5));
        gender _gender = gender.male;
        emit ageRead(_person, uintStateVariable);
        return _gender;
    }
}