// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract EtherUnits {
    /* Ether Units
    ** Note: wei: کوچکترین واحد اتریوم
    1 wei ==> 0.000000000000000001 Ether
    1 gwei ==> 10 ** 9 <==>
    1000000000 wei <=>
    1_000_000_000 wei <=>
    1e9 wei
    1 Ether ==> 10 ** 18 wei <==>

    1000000000000000000 wei <=>
    1_000_000_000_000_000_000 wei <=>
    1e18 wei
    */
    uint public weiUnit = 1 wei;
    uint public gweiUnit = 1 gwei;
    uint public ethUnit = 1 ether;
    uint public myGwei = 1e9;
    uint public myEther = 1e18;
}