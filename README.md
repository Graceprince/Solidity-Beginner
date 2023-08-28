# Solidity-Beginner

This is a simple ERC20 token smart contract that allows users to mint and burn tokens, this contract is a project of the Solidity Beginner class

## Getting Started

### Requirements

1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
2. Your contract will have a mapping of addresses to balances (address => uint)
3. You will have a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the “sender” address by that amount
4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the “sender”.
5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal to the amount that is supposed to be burned.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix IDE](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the code into the file.

### Usage

To use the  contract, you can deploy it to a network of your choice and interact with its functions using a web3 provider such as [MetaMask](https://metamask.io/) or a similar tool.

#### Constructor

The contract has a constructor that takes two parameters:

- `name` (string): The name of the token.
- `abbrv` (string): The symbol of the token.

The constructor initializes the `name` and `abbrv` of the token.

#### Mint function

The `mint` function allows anyone to increase the total supply of the token and the balance of a specified address. It takes two parameters:

- `_to` (address): The address to mint the tokens to.
- `_amount` (uint256): The amount of tokens to mint.

#### Burn function

The `burn` function allows users to decrease the total supply and the balance of their own address, as long as there is sufficient balance. It takes one parameter:

- `_amount` (uint256): The amount of tokens to burn.

The function checks that the user has sufficient balance before burning the tokens.

## Author

[Israel](https://github.com/Graceprince)

## License

This project is licensed under the [MIT License](LICENSE).
