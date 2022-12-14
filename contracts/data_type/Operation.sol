// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Operation
{
    uint public intData = 0;
    string public stringData;

    function math() public
    {
        intData = intData + 1;
        intData += 1;
        intData++;

        intData = intData - 1;
        intData = intData * 1;
        intData = intData / 1;
    }

    // 화폐 데이터 처리
    function weiToEth() public
    {
        uint wei_data = 1 wei; // eth의 가장 작은 단위
        
        uint eth_data = wei_data * (10**18); // 1000000000000000000 (1 ether)
        // 1000000000000000000 / (10**18) = 1 ETH 화면상에 표시
        
        uint gwei_data = wei_data * (10**9);
    }

    function logical() public
    {
        bool true_data = true;
        bool false_data = false;

        if(true_data)
        {
            // logic
        }
        else
        {
            // logic
        }

        if(true_data && false_data) // false
        if(true_data || false_data) // true
        if(true_data == false_data) // false
    }

    function logical2() public
    {
        uint big_data = 100;
        uint small_data = 1;

        if(big_data == small_data) // false
        if(big_data > small_data) // true
        if(big_data != small_data) // true
    }
}