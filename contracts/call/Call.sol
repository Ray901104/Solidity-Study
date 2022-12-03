// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Calculation
{
    event Transfer();

    function plusData(uint a, uint b) external returns(uint)
    {
        return a + b;
    }

    fallback() external payable
    {
        emit Transfer();
    }
}

// call은 호출되는 함수를 가지고 있는 컨트랙트 내에서 처리
// delegatecall은 가져온 컨트랙트 내에서 처리
contract Caller
{
    function isContract(address _addr) private returns(bool isContract)
    {
        uint32 size;

        assembly
        {
            size := extcodesize(_addr)
        }
        return size > 0;
    }

    function callFunc(address payable _address, uint _a, uint _b) public returns(bytes memory)
    {
        // 외부함수 호출
        bytes memory callFuncBytes = abi.encodeWithSignature("plusData(uint256,uint256)",_a,_b);

        if(isContract(_address))
        {
            (bool result, bytes memory sum) = _address.call(callFuncBytes);

            return sum;
        }
        else
        {
            revert();
        }
    }

    function callNotExistFunc(address payable _address, uint _a, uint _b) public returns(bytes memory)
    {
        // 외부함수 호출
        bytes memory callFuncBytes = abi.encodeWithSignature("NotExistFunc(uint256,uint256)",_a,_b);

        if(isContract(_address))
        {
            (bool result, bytes memory sum) = _address.call(callFuncBytes);

            return sum;
        }
        else
        {
            revert();
        }
    }
}