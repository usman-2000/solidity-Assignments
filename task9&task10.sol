// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract task9{
    function powerFunc(uint x, uint y) public pure returns(uint){
        return x ** y;
    }
}



contract task10{
    function palindrome(uint num) public pure returns(string memory){
        uint reverse = 0;
        while(num>0){
            uint mode = num %10;
            num = num / 10;
            reverse += mode;
            if(num > 0){
                reverse= reverse*10;
            }
            
        }
        // return reverse;
    }
}
