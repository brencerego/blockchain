// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract EvenOdd
{
    uint public number;
    string public result;
    function checkEvenOdd(uint _number)public
    {
        number = _number;
        if (number % 2 == 0)
        {
            result = "Even";
        }
        else 
        {
            result = "Odd";
        }
    }
}