// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "ContractB.sol";

contract ContractA {
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
        InterfaceB b = InterfaceB(addressB);
        return b.helloWorld();
    }
}
