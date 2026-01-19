// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RelationalOperators {
    uint public a = 20;
    uint public b = 15;

    function isEqual() public view returns (bool) {
        return a == b;
    }

    function isNotEqual() public view returns (bool) {
        return a != b;
    }

    function isGreater() public view returns (bool) {
        return a > b;
    }

    function isLess() public view returns (bool) {
        return a < b;
    }

    function isGreaterOrEqual() public view returns (bool) {
        return a >= b;
    }

    function isLessOrEqual() public view returns (bool) {
        return a <= b;
    }
}
