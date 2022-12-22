// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
 * A smart contract that saves user balance.
 * This contract has functions that saves the amount a user is depositing into a mapping and a function that searches for user balance inside the mapping and returns the balance of who calls the contract.
 */

contract SaveUserBalance {
    //mapping of address to uint256
    mapping(address => uint256) public balances;
    address public owner = msg.sender;

    function deposit(uint256 amount) public {
        balances[msg.sender] += amount;
    }

    function checkBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}
