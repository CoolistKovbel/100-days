// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    uint a;

    // Give initil value when contract is deployed
    constructor(uint _a) public {
        a = _a;
    }
}
