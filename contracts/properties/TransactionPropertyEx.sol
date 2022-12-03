// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract transactionPropertyEx
{
    mapping(address => uint) private orderList;

    // 주문한 사람의 주소와 실제로 송금한 이더량을 알고싶을 경우 예시
    function newOrderList() external payable
    {
        orderList[msg.sender] = msg.value;
    }


    // 다른 유저가 newOrderList 함수를 정상적으로 호출하였는지 정보를 파악하기 위한 함수
    bytes4 private checkFunction;

    function newCheckFunction(address sender, uint price) external returns(bool)
    {
        bytes4 selector = bytes4(keccak256("newOrderList()"));
        
        if(selector == msg.sig)
        {
            return true;
        }
    }
}