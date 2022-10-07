// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // 1. declare struct
    // 2. CRUD
    // 3. Array of struct
    // 4. mapping of struct

    struct User {
        address addr;
        uint score;
        string name;
    }
    // Array of struct users
    User[] users;
    // using Mapping to create an `array` of users
    mapping(address => User) userList2;

    function foo(string calldata _name) external {
        // When definiing too many users they would be better inside a struct
        User memory user1 = User(msg.sender, 0, _name); // create
        User memory user2 = User(msg.sender, 0, _name); // create
        User memory user3 = User({name: _name, score: 0, addr: msg.sender});

        user3.addr; // read
        user3.score = 20; // update
        delete user1; // delete

        users.push(user2);
    }
}
