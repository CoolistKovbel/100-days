// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    uint data;

    constructor(uint _data) public {
        data = _data;
    }

    function get() external view returns (uint) {
        return data;
    }

    function set(uint _data) external {
        data = _data;
    }
}

// use remix.ethereum.org
