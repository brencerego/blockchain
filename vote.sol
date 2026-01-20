// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract vote
{
    uint public age;
    string public result;
    function checkvote(uint _age) public 
    {
        age = _age;
        if (age >= 18)
        {
            result = "You are eligible to vote.";
        }
        else 
        {
            result = "You are not eligible to vote.";
        }
    }

}
