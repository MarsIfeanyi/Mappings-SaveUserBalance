// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract SaveUserBalance {
    //mapping of address to uint256
    mapping(address => uint256) public balances;
    address public owner = msg.sender;

    // functions that saves the amount a user is depositing into a mapping
    function deposit(uint256 amount) public {
        balances[msg.sender] += amount;
    }

    //function that searches for user balance inside the mapping and returns the balance of who calls the contract
    function checkBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}
