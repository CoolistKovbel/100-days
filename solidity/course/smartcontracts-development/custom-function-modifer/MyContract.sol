// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // 1. modifer syntax
    // 2. passing arguments
    // 3. chaining modifers
    // 4. example for access control

    address admin;

    // Modifer will be called first then everything in the body of the function will be called
    function foo(uint a) external onlyAdmin myModifer(a) myModifer2(a) {
        // do some stuff
    }

    modifier myModifer(uint a) {
        require(a == 10, "my error message");
        //
        _;
    }

    modifier myModifer2(uint a) {
        require(a == 10, "my error message");
        //
        _;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "only admin");
        //
        _;
    }
}
