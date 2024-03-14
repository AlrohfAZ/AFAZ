# TOKEN ON THE ETHEREUM NETWORK

A contract used for minting and burning the token.

## Description

This contract is made up of a token written on the ethereum network. 
It employs 2 functions; mint and burn, 4 public variables; address owner, string tokenName, string tokenAbbreviation, and uint totalSupply.
It has a mapping of address to uint for thr balance.
The mint function takes in two variables, an address and an amount. When the function is called, it adds the amount defined by the user to the balance of the users address and the totalSupply.
The burn function also takes in two variables, an address and an amount. When it is called, it burns the required amount defined by the user and deletes it from
the balance of the users address and the totalSupply. 
