// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract transactionProperty
{
    uint public msg1 = gasleft();
    bytes public msg2 = msg.data; // 
    address public msg3 = msg.sender;
    bytes4 public msg4 = msg.sig; // 함수 호출한 값을 바이트코드로 변환한 값
    uint public msg5 = msg.value; // 사용자가 전송한 이더리움 양

    function checkValue() external payable
    {
        uint value = msg.value;
    }   
}