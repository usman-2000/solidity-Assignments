// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract task7{
    function digitSum(int n) public pure returns(int){
        require(n>0,"n should be greater than 0");
        int sum = 0;
        while(n>0){
            int mode= n % 10;
            sum += mode;
            n /= 10;
        }
        return sum;
    }
}

contract task8{
    function nthTerm(uint a, uint b,uint c, uint n) public pure returns(uint[] memory){
        uint[] memory series= new uint[](n);
        series[0] = a;
        series[1] = b;
        series[2] = c;
        for(uint i = 3; i < n; i++){
            series[i] = series[i-1] + series[i-2] + series[i-3] ;
        }
        return series;
    }
}


//Practice

// Task

// Create a function digitSum(int n). Where n>0.
// Return the sum of digit for n.
// For Example - If n=345 then digitSum() must return 12 i.e. 3+4+5 = 12
// If n=909 then digitSum() must return 18 i.e. 9+0+9 = 18

// Note - Function will be public.

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract sumDigits{

    function DigitSum(uint a) public pure returns(uint){
        
        uint sum = 0;
        while(a > 0){

            uint b = a%10;

            sum += b;

            a= a/10;
            }
            return(sum);


    }
}
