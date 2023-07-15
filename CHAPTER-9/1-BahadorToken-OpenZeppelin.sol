// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BahadorToken is ERC20, Ownable {
    constructor() ERC20 ("Bahador Token", "BHT") {
        _mint(msg.sender, 1_000_000 * (10 ** decimals()));
    }
}