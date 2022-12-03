// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Address
{
    // 대소문자가 정상적으로 반영된 주소값만 사용 가능(checksum)
    // address public failUser = 0xfeebabe6b0418ec13b30aadf129f5dcdd4f70cea; 소문자만 되어있는 주소는 사용
    address public user = 0x690B9A9E9aa1C9dB991C7721a92d351Db4FaC990;

    address payable public payable_user = payable(user);

    // 이더 전송 시 payable로 cast 해주어야 가능
    function sendEth() public payable
    {
        // user.transfer(1000000000000000000); -> 컴파일 에러!
        payable_user.transfer(1000000000000000000); // 받는 주소임
    }

    // 사용자의 잔액 정보 조회
    function getBalance() public view returns(uint)
    {
        return user.balance; // 1000000000000000000
    }
}