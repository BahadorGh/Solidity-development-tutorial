//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract BahadorNFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Bahador NFT", "BNFT") {}

    function makeAnNFT() public {
        // Get the current tokenId, this starts at 0.
        uint256 newItemId = _tokenIds.current();
        // Actually mint the NFT to the sender using msg.sender.
        _safeMint(msg.sender, newItemId);
        // Return the NFT's metadata
        tokenURI(newItemId);
        // Increment the counter for when the next NFT is minted.
        _tokenIds.increment();
    }
    // Set the NFT's metadata
    function tokenURI(
        uint256 _tokenId
        ) public view override returns (string memory) {
        require(_exists(_tokenId));
        return "put_address_of_metadata.json";
    }
}