pragma solidity ^0.8.1;


contract demo{
    mapping(uint => string) public roll_nos;

    function setter(uint keys, string memory value) public {
        roll_nos[keys] = value;
    }
}