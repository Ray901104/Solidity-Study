// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Fallback
{
    uint public data = 0;

    constructor()
    {
        data = 5;
    }

    function order() external payable
    {
        data = 9;
    }

    // ERC20 토큰(100 토큰 전송 -> 100 ETH)
    // 사용자가 존재하지 않는 함수를 호출할 때 호출되는 함수 (msg.data 비어있지 않음)
    fallback() payable external
    {
        revert();
    }

    // 사용자가 ETH 를 전송할 때 (msg.data 비어있음)
    receive() payable external
    {
        revert();
    }
}