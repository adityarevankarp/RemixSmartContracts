pragma solidity ^0.8.1;


contract demo{
    mapping(uint => string) public roll_nos;

    function setter(uint keys, string memory str) public {
        roll_nos[keys] = str;
    }
}