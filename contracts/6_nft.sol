//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract DSCENFT is ERC721 {
    constructor(string memory _name,string memory _symbol)
    ERC721(_name,_symbol){}

    modifier doesTokenExist(uint tokenId){
        require(_exists(tokenId),"ERC721: TOKEN ID NOT FOUND");
        _;
    }
    
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    mapping (uint => string) private _toeknUri;

    function _setTokenUri(string memory tokenUri, uint tokenId) internal {
        _toeknUri[tokenId] = tokenUri;
    }

    function mint(address recipeinet,uint tokenId,string memory tokenUri) public {
        _mint(recipeinet, tokenId);
        _setTokenUri(tokenUri,tokenId);
        Counters.increment(_tokenIds);

    }

    function tokenURI (uint tokenId) public view virtual override doesTokenExist(tokenId) returns(string memory)//overriding the main tokenURI erc20 function contract
    {

        return _toeknUri[tokenId];
    }
        
}