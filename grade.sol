// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Result
{
    uint public marks;
    string public result;
    function CheckResult(uint _marks) public 
    {
        marks = _marks;
       if (marks >= 90)
       {
        result = "A";
       }
       else if (marks >= 75)
       {
        result = "B";
       }
       else if (marks >= 60)
       {
        result = "C";
       }
       else if (marks >= 40)
       {
        result = "D";
       }
       else 
       {
        result = "Fail";
       }
    }
}