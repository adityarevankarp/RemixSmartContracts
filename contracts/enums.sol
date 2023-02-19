pragma solidity ^0.8.1;

contract enumsDemo{
    enum user {allowed,not_allowed,wait}

    user public u1 = user.wait;// outputs 2

    uint public lottery = 1000;
    function owner() public {
        if(u1==user.allowed){
            lottery = 0;
        }
    }


    function changeowner() public{
        u1 = user.not_allowed;
    }
}