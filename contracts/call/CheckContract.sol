// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract EthTransfer
{
    // CA 여부 체크    
    function isContract(address _addr) private returns (bool isContract)
    {
        uint32 size;
        assembly
        {
            size := extcodesize(_addr)
        }
        return size > 0; // CA, EOA
    }

    // transfer, send, call
    // address(to).transfer, address(to).send, address(to).call

    event Transfer();

    // Eth 송금
    function sendTransfer(address payable to) public payable
    {
        to.transfer(msg.value);
    }

    function sendSend(address payable to) public payable
    {
        bool result = to.send(msg.value);
        
        if(result)
        {
            emit Transfer();
        }
        else
        {
            revert();
        }
    }

    function call(address payable to) public payable
    {
        (bool result, bytes memory data) = to.call{value:msg.value}("");

        if(result)
        {
            emit Transfer();
        }
        else
        {
            revert();
        }       
    }
}