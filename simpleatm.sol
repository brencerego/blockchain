// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleATM {
    uint public balance;

    //Constructor to add initial balance
    constructor(uint initialBalance)
    {
        balance = initialBalance;
    }

    // User-facing function
    function withdraw(uint amount) external {
        _verifyBalance(amount);
        _updateBalance (amount);
    }

    // Internal check (cannot be called by users)
    function _verifyBalance(uint amount) internal view 
    {
        require(balance >= amount, "Insufficient balance");
    }
    
    // Internal state update (cannot be called by users)
    function _updateBalance(uint amount) internal {
        balance -=amount;
    }
    
}