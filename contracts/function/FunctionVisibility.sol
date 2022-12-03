// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract FunctionVisibility
{
    // private 외부에 공개 x
    // public 외부에 공개
    uint8 private data = 255;

    // 외부 공개 x, 상속된 ca x, 내부 o
    function setData(uint8 _data) private
    {
        data = _data;
    }

    // 외부 공개 x, 상속된 ca o, 내부 o
    function setData(uint8 _data) internal
    {
        data = _data;
    }

    // 외부 공개 o, 상속된 ca o, 내부 o
    function setData(uint8 _data) public
    {
        data = _data;
    }

    // 외부 공개 o, 상속된 ca x, 내부 x
    function setData(uint8 _data) external
    {
        data = _data;
    }
}