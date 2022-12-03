// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Revert
{
    mapping(address => uint) public orderList;

    function order() external payable
    {    
        // revert 의 경우 무조건 Error 발생, State 롤백 -> 조건문 필요
        revert("Msg.value must not be zero");
        orderList[msg.sender] = msg.value; // unreachable code
    }
}