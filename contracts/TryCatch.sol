// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Math
{
    function plusData(uint a, uint b) external returns(uint)
    {
        return a + b;
    }
}

contract TryCatch
{
    Math math = new Math();
    address payable public temp_address = payable(0x474bB86713b06f8E9062a512F0d4eEedD92895Ed);

    function callOtherContract(address to) external
    {
        // 외부 컨트랙트에 있는 함수를 호출할 때만
        try math.plusData(6, 4) returns(uint result)
        {
            (temp_address).transfer(result);
        }
        catch
        {
            revert();
        }
    }
}