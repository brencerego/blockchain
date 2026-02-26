// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract GrainWarehouse{

    uint public intialstock=1000;
    uint public deposit=350;
    uint public withdraw=220;
    uint public damagepercentage=5;
    uint public bagspercontainer=10;

    function calculatestock() public view returns (

        uint totalafterdeposit,
        uint totalafterwithdraw,
        uint damagedbags,
        uint finalstock,
        uint containers,
        uint leftoverbags
    ) 
    {
        totalafterdeposit=intialstock+deposit;
        totalafterwithdraw=totalafterdeposit-withdraw;
        damagedbags=(totalafterwithdraw*damagepercentage)/100;
        finalstock=totalafterwithdraw-damagedbags;
        containers=finalstock/bagspercontainer;
        leftoverbags=finalstock%bagspercontainer;
    }
}