// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Result
{
    uint public marks;
    string public result;
    function CheckResult(uint _marks) public 
    {
        marks = _marks;
       if (marks < 40)
       {
        result = "Fail";
       } 
       else 
       {
        result = "Pass";
       }
    }
}