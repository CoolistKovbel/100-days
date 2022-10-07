// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    uint value;

    // private - can only call the function inside the smart contract usually prefix the function with `_` to show dev its private
    // internal - function is still limited within the smart contract but can be called from smartcontract who inherites the smart contract
    // external - can only be called from outside the smart contract
    // public - can call function outside but also inside the smart contract

    // Rule of thumb give minimal amount of access to entities

    function getValue() external view returns (uint) {
        return value;
    }

    function setValue(uint _value) external {
        // Since the function is external it wont be able to be called
        // getValue();
        value = _value;
    }
}
