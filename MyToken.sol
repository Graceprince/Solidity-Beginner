// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public name;
    string public abbrv;
    uint256 public totalSupply;


    // mapping variable here
    mapping(address => uint256) public balances;

     // Constructor 
    constructor() {
        name = "MyToken";
        abbrv = "MTKN";
    }

    // mint function
     function mint(address _to, uint256 _amount) public {
        // Make sure the address is valid
        require(_to != address(0), "Invalid address");
        // Increase the total supply
        totalSupply += _amount;
        // Increase the balance of the specified address
        balances[_to] += _amount;
    }

    // burn function
    function burn(uint256 _amount) public {
        // Make sure the contract creator has sufficient balance
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        // Decrease the total supply
        totalSupply -= _amount;
        // Decrease the balance of the contract creator
        balances[msg.sender] -= _amount;
    }

}
