// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // Send ether
    function foo(address payable to, uint amount) external {
        to.transfer(amount); // transfers in wei if no uint is present 1 ether transfer 1 ether
    }

    // Reciver ether
    function bar() external payable {
        msg.value; // amount of ether sent to this function in wei
        address(this).balance; // shows contract balance
    }

    // Send directly to smart contract with calling a function
    fallback() external payable {
        // will be able to recive ether
    }

    // This will called if you send ether to smart contract with targeting any function
    receive() external payable {
        // code will be excuted here
    }

    // Best practice creating a function that will hadnle ether transactions
}
