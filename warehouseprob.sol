// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Warehouse {
    uint public initialStock = 1000;
    uint public deposit = 350;
    uint public withdraw = 220;
    uint public damagedPercent = 5;
    uint public bagsPerContainer = 10;

    function calculateStock() public view returns (
            uint totalAfterDeposit,
            uint totalAfterWithdraw,
            uint damagedBags,
            uint finalStock,
            uint containers,
            uint leftOverBags
        )
    {
        totalAfterDeposit = initialStock + deposit;
        totalAfterWithdraw = totalAfterDeposit - withdraw;
        damagedBags = (totalAfterWithdraw * damagedPercent) / 100;
        finalStock = totalAfterWithdraw - damagedBags;
        containers = finalStock / bagsPerContainer;
        leftOverBags = finalStock % bagsPerContainer;
    }
}
