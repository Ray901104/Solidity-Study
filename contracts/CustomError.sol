// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

// error 문구를 커스텀하여 공통으로 만들어 놓고 사용할 수도 있다.
error ZeroCheckError();

contract CustomError
{
    mapping(address => uint) public orderList;

    function order() external payable
    {
        revert ZeroCheckError();
        orderList[msg.sender] = msg.value;
    }
}