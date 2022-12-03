// SPDX-License-Identifier : MIT
pragma solidity >=0.4.0 <0.5.0;

contract FunctionV4
{
    uint8 private data = 255;

    // 모든 노드가 검증을 해야하기 때문에 transaction이 발생한다.
    function setData() public
    {
        data += 1;
    }

    // state 값을 바꾸지 않는 함수를 호출할 때는 transaction이 발생하지 않는다.
    function getData() public returns(uint8)
    {
        return data;
    }
}