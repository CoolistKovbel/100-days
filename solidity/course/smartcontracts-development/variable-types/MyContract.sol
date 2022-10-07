// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // 1. fixed-sized types

    bool isReady; //true or false
    uint a; // can only hold positive numbers and has to be integers
    address recipient; // can hold ethereum address
    bytes32 data; // holds any binary arbitrats data - useful to hold strings

    // 2. variable-size types

    string name; // hard to manipulate
    bytes _data; // generealization of bytes32 - holds any type of data
    uint[] amounts; // used to create arrays but must be the same type `uint struct string address`
    mapping(uint => string) users; // an array with a key and value similar to javascript objects

    // 3. user-defined data

    // Also similar to javascript object but doesnt have a container but need to put it inside one like an array or mapping
    // This intilizes one specfic user
    struct User {
        uint id;
        string name;
        uint[] friendIds;
    }

    //  used as a label good to represent options
    enum Color {
        // different options
        RED,
        GREEN,
        BLUE
    }

    // Color.RED, Color.GREEN
}
