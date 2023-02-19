pragma solidity ^0.8.1;

struct student{
    uint roll;
    string name;

}

contract demo{
    student public s1;

    constructor(uint _roll, string memory _name){
        s1.roll = _roll;
        s1.name = _name;
    }

    //changing the values

    function changeName(uint _roll,string memory _name) public{
        student memory new_student = student({
            roll:_roll,
            name:_name
        });

        s1 = new_student;
    }
}