// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Modifier
{
    // modifier : 공통으로 사용할 check 로직
    // value > minPrice 일 경우에만 다음 로직 실행
    modifier checkMinPrice()
    {
        require(msg.value > minPrice);
        _; // 이후 로직을 실행하겠다는 의미
    }

    uint public minPrice = 10000;
    mapping(address => uint) public orderList;

    function test1() public payable checkMinPrice
    {
        orderList[msg.sender] = msg.value;
    }

    function test2() public payable checkMinPrice
    {
        orderList[msg.sender] = msg.value;
    }
}