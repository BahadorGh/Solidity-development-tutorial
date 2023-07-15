//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArray {
    int[] age;
    int[] age2 = [int(10), 20, 30, 40, 50];
    int[] age3 = new int[](5);
    uint[] myArray;

    function addToArray(uint _number) public returns (uint) {
        myArray.push(_number);
        return (_number);
    }
    // حذف آخرین عنصر از آرایه
    function popItem() public {
        myArray.pop();
    }
    // برگرداندن طول آرایه 
    function myArrayLength() public view returns (uint) {
        return myArray.length;
    }
    // به روزرسانی مقدار یک عنصر انتخابی 
    function myArrayUpdate(uint _index) public {
        myArray[_index] = 75;
    }
    // برگرداندن مقدار یک عنصر دلخواه 
    function myArrayAccess(uint _index) public view returns (uint) {
        return myArray[_index];
    }
    // خالی کردن مقدار یک خانه آرایه دلخواه 
    // مقدار موجود در آن خانه را 0 می کند 
    function popItem(uint _index) public {
        delete myArray[_index];
    }
}