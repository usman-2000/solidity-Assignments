// Create a function average(int a,int b,int c). Where a>0,b>0,c>0.
// Return the average of a,b and c.
// Note - Function will be public.

// You can do this :)

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract task6{
    function avrg(int a,int b, int c) public pure returns(int){
        require(a > 0 ,"a should be greater than 0");
        require(b > 0,"b should be greater than 0");
        require(c > 0,"c should be greater than 0");

        return((a+b+c)/3);

    }
}
