// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    uint value;

    // reads the values inside the smart contract using the `view` keyword as well as `returns` and inside the returns parenthesis we put in the `type` we are returning
    //  using `view` keyword to read value inside smart contract
    function getValue() external view returns (uint) {
        // Reference the variable outside the function
        return value;
    }

    // Exactly the same in javascript
    function setValue(uint _value) external {
        value = _value;
    }
}
