// SPDX-License-Identifier: MIT

pragma solidity 0.6.0;
pragma experimental ABIEncoderV2; // allows to return a struct from function

contract Wallet {
    address[] public approvers;
    uint public quorum;

    struct Transfer {
        uint id;
        uint amount;
        address payable to;
        uint approvals;
        bool sent;
    }

    Transfer[] public transfers;
    // @uint = id of transfer
    mapping(address => mapping(uint => bool)) public approvals;

    constructor(address[] memory _approvers, uint _quorum) public {
        approvers = _approvers;
        quorum = _quorum;
    }

    // Get a list of approvers
    function getApprovers() external view returns (address[] memory) {
        return approvers;
    }

    // create a transfer
    function createTransfer(uint _amount, address payable _to)
        external
        onlyApprover
    {
        transfers.push(Transfer(transfers.length, _amount, _to, 0, false));
    }

    // View Transfer
    function viewTransfers() external view returns (Transfer[] memory) {
        return transfers;
    }

    // approvers approve each transfer
    function approveTransfer(uint id) external onlyApprover {
        require(transfers[id].sent == false, "Transfer has already been sent");
        require(approvals[msg.sender][id] == false, "Cannot approve again");

        approvals[msg.sender][id] = true;
        transfers[id].approvals++;

        if (transfers[id].approvals >= quorum) {
            transfers[id].sent = true;
            address payable to = transfers[id].to;
            uint amount = transfers[id].amount;
            to.transfer(amount);
        }
    }

    // Recieve ether
    receive() external payable {} //no function body just need to send transaction to contract address

    modifier onlyApprover() {
        bool allowed = false;
        for (uint i = 0; i < approvers.length; i++) {
            if (approvers[i] == msg.sender) {
                allowed = true;
            }
        }
        require(allowed == true, "You are not allowed - only approvers");
        _;
    }
}
