// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    event NewTrade(
        uint date,
        address indexed from, //max amount of index is 3 - listens to a specific event- allowing to filter through event using the specidiv field
        address indexed to,
        uint amount
    );

    function trade(address to, uint amount) external {
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}
