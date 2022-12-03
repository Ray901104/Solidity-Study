// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract IfElse
{
    uint public minimalPrice = 1000;
    uint public maxPrice = 1000000;

    mapping(int => address) owner;

    function conditional(uint ask_price) public
    {
        if(ask_price > minimalPrice)
        {
            // 트랜잭션 성공
            owner[1] = 0x474bB86713b06f8E9062a512F0d4eEedD92895Ed;
        }
        else
        {
            // 트랜잭션 실패
            revert();
        }
    }

    // 조건이 여러개일 경우
    function conditional2(uint ask_price) public
    {
        if(ask_price > minimalPrice)
        {
            // 트랜잭션 성공
            owner[1] = 0x474bB86713b06f8E9062a512F0d4eEedD92895Ed;
        }
        else if(ask_price > maxPrice)
        {
            // 트랜잭션 실패
            revert();
        }
        else
        {
            // 트랜잭션 실패
            revert();
        }
    }
}