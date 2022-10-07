// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // 1. storage arrays - store inside blockchain

    // 2. memory arrays - stays only when you excute a function

    // 3. array arguments and returns arrays from function

    // 1. storage arrays

    // array of intergetrs
    uint[] myArray;
    // Fixed sized array
    uint[2] fixMyArray;

    // crud. -create -read -update -delete

    function foo() external {
        // Add a new element
        myArray.push(2);

        // Read
        // access array though the index like in javascript
        myArray[0];

        // update
        myArray[0] = 12;

        // delete
        delete myArray[0];

        // iterate through an array

        for (uint i = 0; i < myArray.length; i++) {
            myArray[i];
        }
    }

    // bool of intergetrs
    bool[] myArray2;

    // 2. memory array
    function bar() external pure {
        // Only declare array in function
        uint[] memory newArray = new uint[](10);
        // adding
        // Push method doesnt exist for fixed sized memory array
        newArray[0] = 10;
        newArray[1] = 20;

        // Read
        newArray[0];

        // update
        newArray[0] = 200;

        // delete
        delete newArray[5];
    }

    // recap
    // 1 - just temp not saved in blockchain
    // 2 - cant have a dynamic array
    // 3 - dont have access to push need to access index directly

    // 3. arrays in functions
    function fooBar(uint[] calldata myArg) internal returns (uint[] memory) {}
}
