//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract supplyChain{

    struct _data{
        uint _price;
        uint _id;
        uint _quantity;
    }_data product_data;

    function get_data(uint price,uint id,uint quantity) external {
        product_data._price = price;
        product_data._id = id;
        product_data._quantity = quantity;
    }

    function output_data()public view returns (uint){
        
        return product_data._price;
    }

    mapping(uint => uint) public inventory;

    function add_to_inventory(uint _id,uint _qwantity) public {
        
        inventory[_id] = _qwantity;
        
    }

    
    function place_order(uint _id, uint req_qwantity) public {
        require(inventory[_id]>=req_qwantity,"Not enough qwantity in the inventory");
        inventory[_id] -= req_qwantity;
        
    }
    function get_qwantity_left(uint _id) public view returns (uint){
        return inventory[_id];
    }


}