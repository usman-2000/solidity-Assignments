//SPDX-License-Identifier: Unlicensed

pragma solidity ^ 0.8.4;

contract task1{
    string str = "Hello Solidity";
    function hello() public view returns(string memory){
        return str;
    }
}

contract task2{
    uint num = 10;
    function returnStateVar() public view returns(uint){
        return num;

    }

    function returnLocalVar() public pure returns(uint){
        uint num2 = 20;
        return num2;
    }
}
