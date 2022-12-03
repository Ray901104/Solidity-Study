// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Assert
{
    mapping(address => uint) public orderList;

    function order() external payable
    {    
        // 조건문만
        assert(msg.value != 0); // msg.value == 0 일 경우 Error를 발생시키고 Transaction으로 인해 지금까지 변경된 state를 rollback
        orderList[msg.sender] = msg.value;
    }
}