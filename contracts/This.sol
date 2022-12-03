// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract This
{
    // this = 해당 contract를 지칭하는 키워드
    uint public data = 10;

    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function externalFunc() external
    {
        data = 15;
    }

    function internalFunc() internal
    {
        // externalFunc(); -> 외부에서만 사용할 수 있는 함수이므로 컴파일 에러!
        this.externalFunc();
    }
}