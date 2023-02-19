pragma solidity ^0.8.1;

contract Array
{
    uint[4] public arr = [20];
    
    function setter(uint index,uint value) public{
        arr[index] = value;
    }

    function findLength() public view returns(uint){
        return arr.length;
    }
    // dynamic size array below

    uint[] public Darray;

    function pushElement(uint _ele) public{
        Darray.push(_ele);

    }

    function popArr() public {
        
        Darray.pop();
    }
    

}