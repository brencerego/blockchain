// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
contract Balance
{
    uint public balance;
    string public result;
    
    function checkbalance(uint _balance) public
    {
        balance = _balance;
        if (balance == 0)
        {
            result = "go to the streets!!";
        }
        else if (balance < 1000)
        {
            result = "Ok-ish balance";
        }
        else if (balance > 1000)
        {
            result = "You got sme money";
        }
    }
}