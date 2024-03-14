// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Jack {
    address public owner = msg.sender;
    string public tokenName = "Jack";
    string public tokenAbbreviation = "JCK";
    uint public _totalSupply = 10000*10**18;
    mapping(address => uint) public balances;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function mint(address to, uint256 amount) public payable onlyOwner {
        balances[to] += amount;
        _totalSupply += amount;
    }

    function burn(address to, uint256 amount) public payable onlyOwner {
        require(balances[to] >= amount);
        balances[to] -= amount;
        _totalSupply -= amount;
    }
}