// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Require
{
    mapping(address => uint) public orderList;

    function order() external payable
    {
        // msg.value 가 0이 아닐 경우에만 다음 로직 실행
        // msg.value 가 0일 경우 보여줄 에러 메시지 
        require(msg.value != 0, "Msg.value must not be zero");
        orderList[msg.sender] = msg.value;

        // if(msg.value != 0)
        // {
        //     orderList[msg.sender] = msg.value;
        // }
        // else
        // {
        //     revert("Msg.value must not be zero");
        // }
    }
}