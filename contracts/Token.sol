// SPDX-License-Identifier: UNLICENSED
// @ryd3v 
// 10-4-2022
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Token {
    string public name = '6ixCode Token';
    string public symbol = 'SIX';
    uint public totalSupply = 1000;

    mapping (address => uint) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint ammount) external {
        require(balances[msg.sender] >= ammount, "Insufficient tokens");
        balances[msg.sender] -= ammount;
        balances[to] += ammount;
    }

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }
}