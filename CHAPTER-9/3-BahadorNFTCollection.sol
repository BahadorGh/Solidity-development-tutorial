// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BahadorNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Bahador Extended NFT Collection", "BXNFT") {}

    function makeMyNFT(address recipient, string memory tokenURI) public onlyOwner returns (uint) {
        _tokenIds.increment();
        uint newItemId = _tokenIds.current();

        _safeMint(recipient, newItemId);

        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}