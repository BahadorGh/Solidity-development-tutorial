//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// توجه: ابتدا این قرارداد را دیپلوي کنید 
contract B {
    // توجه: چینش متغیرهاي سراسري 
    // باید عیناً مثل چینش
    // B
    // باشد
    uint public age;
    address public sender;
    uint public value;
    function setVars(uint _age) public payable {
    age = _age;
    sender = msg.sender;
    value = msg.value;
    }
}

contract A {
    uint public age;
    address public sender;
    uint public value;

    function setVars(address _contract, uint _age) public payable {
        // حافظه استوریج این قرارداد تغییر می کند 
        // اما تغییري در قرارداد 
        // B
        // .رخ نمی دهد 
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setVars(uint256)", _age)
        );
        require(success, "Something wrong happend!");
    }
}