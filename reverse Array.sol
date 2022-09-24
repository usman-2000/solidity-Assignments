// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day1 {
    function reverseArray(uint[] memory array,uint LengthArr) public pure returns(uint[] memory){
        uint[] memory reversed =  new uint[](LengthArr);
        uint j = 0;

        for (uint i = LengthArr; i >= 1; i--){
            reversed[j] = array[i-1];
            j++;
        }

        return reversed;

    }    
}
