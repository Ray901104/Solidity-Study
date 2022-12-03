// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Solidity
{
    // a(10) -> Fun() -> a(15) 
    uint8 public a = 10;

    // a의 state 값 변경
    function changeData() public 
    {
        a = 15;
    }
}