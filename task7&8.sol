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
