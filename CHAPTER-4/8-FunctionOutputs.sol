//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionOutputs {

    // در اینجا تابع میتواند چند نوع متغیر مختلف را برگرداند. 
    function myReturn() public pure returns(uint,address,bool,uint) {
        return (1,address(1), true, 2);
    }
    
    // مقادیري که از تابع خارج میشوند می توانند نام داشته باشند 
    function returnByName() public pure returns(uint x, address y, bool z, uint p) {
        return (1,address(1), true, 2);
    }

    // با نامگذاري متغیرهاي خروجی، می توان مقادیر را بدون استفاده از 
    // return
    // خروجی گرفت. 
    function returnWithoutReturn() public pure returns (uint x, address y, bool z, uint p) {
        x = 1;
        y = address(1);
        z = true;
        p = 2;
    }

    // Destructuring:
    // با استفاده از این نوع مقداردهی در سالیدیتی 
    // در هنگام فراخوانی یک تابع 
    // می توانیم مقادیر را به ترتیب 
    // درون متغیرهایی که تعریف کردیم بریزیم. 
    function destructuring() public pure returns (uint,address,bool,uint,uint,uint) {
        (uint i, address b, bool n, uint q) = myReturn();
        (uint x,,uint y,) = (10,20,30,40);
        return (i,b,n,q,x,y);
    }
}