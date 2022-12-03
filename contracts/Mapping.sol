// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Mapping
{
    // ERC20 잔액 관리할 때 사용
    // 사용자의 잔액은 ca에 저장
    mapping(address => int) public balance;
    
    // key - value
    // key값 중복 x

    balance["0x474bB86713b06f8E9062a512F0d4eEedD92895Ed"] = 1000;
    uint public myBalance = balance["0x474bB86713b06f8E9062a512F0d4eEedD92895Ed"]; // 1000

    balance["0x474bB86713b06f8E9062a512F0d4eEedD92895Ed"] = 10;
    uint public myBalance = balance["0x474bB86713b06f8E9062a512F0d4eEedD92895Ed"]; // 10 (덮어 씌워진다.)

    balance["0x690B9A9E9aa1C9dB991C7721a92d351Db4FaC990"] = 50;
    uint public yourBalance = balance["0x690B9A9E9aa1C9dB991C7721a92d351Db4FaC990"]; // 50
}