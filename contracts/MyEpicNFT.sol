// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("TonyStark", "STARK") {
        console.log("Tony Stark Living Lavish");
    }

    function makeAnEpicNFT() public {
        uint256 newItemId = _tokenIds.current();

        _safeMint(msg.sender, newItemId);

        _setTokenURI(newItemId, "data:application/json;base64,ewogICAgIm5hbWUiOiAiVG9ueSBTdGFyayIsCiAgICAiZGVzY3JpcHRpb24iOiAiSXJvbiBtYW4uIFRoZSB1bHRpbWF0ZSBzYWNyaWZpY2UuIiwKICAgICJpbWFnZSI6ICJodHRwczovL2JhZnliZWlhcXFta2x0cW14aDV5YmF5Ynl2dXFwN2VwZWNnM3F6b2M3Y2drY2x4Nm5xMzVmdWx5ZWJxLmlwZnMuZHdlYi5saW5rL3Rvbnktc3RhcmsuanBnIgp9");
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        _tokenIds.increment();
    }
}