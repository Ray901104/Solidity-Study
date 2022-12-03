// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract PureView
{
    // 스토리지 - 영구적 저장
    // 메모리 - 임시적 저장

    uint8 private data = 255; // 전역변수 - 스토리지값

    // state(블록체인에 실제 저장된 값) 값을 조회하는 경우 - view
    function getData() public view returns(uint8)
    {
        return data;
    }

    // 임시로 생성한 메모리 데이터를 조회하는 경우 - pure
    function getPureData(string memory _data) public pure returns(string memory)
    {
        string memory temp_data = "9";
        return temp_data;
    }
}