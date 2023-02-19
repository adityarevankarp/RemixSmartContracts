//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Bank {
    uint public totalFunds;
    address public owner;

    mapping(address => uint) private balances;

    modifier onlyOwner() {
        require(msg.sender == owner,"Error: Caller is ot an owner");
        _;
    }

    function getTotalFunds() view external onlyOwner returns (uint){
        return totalFunds;
    }

    constructor(){
        owner = msg.sender;
    }

    function deposit() payable external {
        totalFunds = totalFunds + msg.value;

        balances[msg.sender] += msg.value; 
    }

    function withdraw(uint amount) external {
        require(balances[msg.sender]>=amount,"Error: Insufficient funds");
        balances[msg.sender] -= amount;
        totalFunds -= amount;
        payable(msg.sender).transfer(amount);
    }

    function getBalance() view external returns (uint){
        return balances[msg.sender];
    }


    

}