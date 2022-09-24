// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Tracking_Exact_Location{
    address origin;
    address supplier;
    address consumer;


// AN OWNER CAN TRACK THE PRODUCT WHICH HE SENT 
    constructor(){
        origin = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == origin,"Not Origiating Owner");
        _;
    }


    struct ORIGIN_details{
        address origin;
        string Originator_Name;
        string destination;
        uint prod_id;

    }

    struct SUPPLIER_details{
        address supplier;
        uint id; //for getting supplier
        string name;
        string product_recieved;
        string location;
    }

    struct Reached_Destination{
        
        string reached;
        string condition;
        
    }
    mapping (address=>uint) getting_ID;
    mapping (address => string) getting_location;
    SUPPLIER_details[] public supplier_details_list;
    Reached_Destination[] public Reached_Destination_list;


    function set_origin_details(string memory _Originator_Name,string memory _destination,uint _prod_id) public view{
        ORIGIN_details(origin,_Originator_Name,_destination,_prod_id);
    }

    function set_supplier_details(address _supplier,uint _id, string memory _name,string memory _product_recieved,string memory _location) public onlyOwner {
        supplier_details_list.push(SUPPLIER_details(_supplier,_id,_name,_product_recieved,_location));
        getting_ID[_supplier] = _id;
        getting_location[_supplier] = _location;
    }

    function set_Destination_details(string memory _reached, string memory _condition) public{
        Reached_Destination_list.push(Reached_Destination(_reached,_condition));
        // CONSUMER_Details memory ifOpened;
        // if(ifOpened.opened == "yes"){
            
    }

    function get_Supplier(address _addr) public view returns(uint){
        return getting_ID[_addr];
    }

    function get_location(address _addr) public view returns(string memory){
        return getting_location[_addr];
    }


}
