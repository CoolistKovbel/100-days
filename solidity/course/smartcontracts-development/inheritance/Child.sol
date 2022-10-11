// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./Parent.sol";

contract Child is Parent {
    // initialdata will transfer from child constructor to parent contractor
    constructor(uint intitalData) public Parent(intitalData) {
        // data = 10;
    }

    function bar() external {
        foo();
        data++;
    }
}
