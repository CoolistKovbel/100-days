// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // 1. call function of other contract
    // 2. import key word
    // 3. contract interface
    // 3. error propagation

    // 1 interface of B => B
    // 2. address of B

    address addressB;

    function setAddress(address _addressB) external {
        addressB = _addressB;
    }

    function callHelloWorld() external view returns (string memory) {
        B b = B(addressB);
        return b.helloWorld();
    }
}

contract B {
    function helloWorld() external pure returns (string memory) {
        return "Hello world";
    }
}
