// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract MyContract {
    // 1. what happen when ther eis an error?
    // 2. throw
    // 3. revert()
    // 4. require()
    // 5. assert()
    // 6. error in other contracts

    uint a;

    function foo() external {
        // throw() <-- only used in solidity 0.4.0
        // revert('explantion') <- can be used in a codintion
        // require(a != 10, 'explantions') <-- a better error handling within a codition
        // assert(a != 10) testing for errors that should never happen
        // Bom! error
    }

    // function willThrow() external  {
    //     revert('because resons');
    // }

    // function willThrow() external  {
    //     require(true == false, 'because resons');
    // }

    // function willThrow() external  {
    //     assert(true == false);
    // }

    function willThrowInOtherContract() external {
        B b = new B();
        // b.bar();

        address(b).call(abi.encodePacked("bar()"));
    }
}

contract B {
    function bar() external {
        revert("Because other reasons");
    }
}
