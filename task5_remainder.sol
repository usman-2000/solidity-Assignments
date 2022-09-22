// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract task5{
    function find(int a) public pure returns(int){
        require(a>0, "a should be greater than 0");
        int b = a%3;
        return b;
    }

}
