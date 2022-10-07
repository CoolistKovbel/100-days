// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // private variable can only be read within the same smart contract
    uint private a = 0;

    // can be read inside the smart contract and inherats but not outside the smart contract
    uint internal a = 0;

    // can be read inside and outside smart contract by default it will be public
    uint public a = 0;

    function foo() external {
        // inside the smart contract we can read the variable a but can not be read outside the smart contract
        uint b = a + 1;
    }
}
