// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract ElonNFT is ERC721URIStorage {

    //Counters.Counter private _tokenIds -- replaced with below
    uint private _tokenIds;

    constructor() ERC721("ElonMusk", "ELON") {}

    function mintNFT() public returns (uint256) {
        // _tokenIds.increment() -- replaced with below
        _tokenIds++;
        //uint256 newItemId = _tokenIds.current(); -- replaced with below
        uint newItemId = _tokenIds;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, "https://teal-causal-ant-772.mypinata.cloud/ipfs/QmdbgVB1eug1kRqfBz3PH918FBPUmUSoFJDNtSM6ze8QNG?_gl=1*1i0b7gl*_ga*Nzg4NTgzMjQ0LjE3MDUyNTY3OTA.*_ga_5RMPXG14TE*MTcwNTI1Njc4OS4xLjEuMTcwNTI1OTU0OC42MC4wLjA.");
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}
