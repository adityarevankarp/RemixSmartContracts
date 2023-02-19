pragma solidity ^0.8.1;

contract MapingEg{

    mapping(address => uint) public balanceReceived;

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function sendMoney() public payable{
        balanceReceived[msg.sender] += msg.value;//storing the total value of the smart contract
    }

    function WithdrawAllMoney(address payable _to) public{
        _to.transfer(address(this).balance);
    }
}