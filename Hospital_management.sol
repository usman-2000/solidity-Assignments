// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract patient_data_management_System{
    struct Patient_Details{
        uint id; //id is the index of patient in the list, so try to give id sequencly.
        string name;
        uint age;
        string fingerPrint;
        string bloodGroup;
        string desease;
        string treatment_Done;

    }
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    Patient_Details[] Patient_details_List;

    function set_Patient_Details(uint _id,string memory _name,uint _age,string memory _fingerPrint,
    string memory _bloodGroup,string memory _desease,string memory _treatment_Done) public {
        Patient_details_List.push(Patient_Details(_id,_name,_age,_fingerPrint,_bloodGroup,_desease,_treatment_Done));
    }

    function get_Details(uint _id) public view onlyOwner returns(Patient_Details memory){
        // Patient_Details storage details_List = Patient_details_List[_id];/
        return Patient_details_List[_id];
    }

}
