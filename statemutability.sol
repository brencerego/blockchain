// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewExample {
    uint public balance = 100;

    function changeBalance() public view returns (uint)
    {
        //balance = 200;
        return balance;
    }
}


contract PureView {
    uint stateVariable = 5;

    function pureFunc(uint a, uint b) public pure returns (uint) 
    {
        return a+b;
    }
}




