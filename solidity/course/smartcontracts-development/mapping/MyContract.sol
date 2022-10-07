// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // 1. declare mappings
    // 2. C.R.U.D
    // 3. Default Values
    // 4. Exotic mapping 1: nested mappings
    // 5. Extotic mapping 2: array inside mapping

    // 1. declare mappings

    mapping(address => uint) balances; // balances of user
    mapping(address => mapping(address => bool)) approved; /// erc 20 approver
    mapping(address => uint[]) scores; //something for a game

    function foo(address spender) external {
        // 2 - Add
        // Specific the sender of the transactions
        balances[msg.sender] = 100;
        // 2 - Read
        balances[msg.sender];
        // 2 - update
        balances[msg.sender] = 200;
        // 2 - delete
        delete balances[msg.sender];

        // 3 - Default values
        balances[someAddressThatDoNotExist]; // This will have value by defualt will be 0 since a uint

        // 4 exotic mapping
        approved[msg.sender][spender] = true; // add
        approved[msg.sender][spender]; // read
        approved[msg.sender][spender] = false; // update
        delete approved[msg.sender][spender]; // delete

        // 5 exotic mapping 2
        scores[msg.sender].push(1); // add
        scores[msg.sender].push(2); // add
        scores[msg.sender][0]; // read
        scores[msg.sender][0] = 10; // update
        delete scores[msg.sender][0]; // delete
    }
}
