# Token Creation and deploy it on Hardhat network.

This Solidity program is a simple "Token creation" program that demonstrates the basic syntax and functionality of the Solidity programming language. We have created this code as to create token and deploy it on hardhat network.

## Description

In this I, Dhruv, explain the Solidity code that I have created, which includes the generation of a token and its deployment on the Hardhat network. I discuss the SPDX license identifier, the specified Solidarity version, and the creation of the token contract. I also explain the variables, functions, and statements used in the code, such as the balance update, minting, burning, and transferring of tokens. Additionally, I demonstrate how to compile and deploy the code on the Hardhat network using MetaMask. Overall, this video provides a comprehensive overview of the Solidarity code and its deployment process.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

'''Solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Tokengeneration {

     address public owner;
     string public tokenname="Dhruvcoin";
     string public tokenabbr="DUC";
     uint public totalsupply;
    
     mapping(address=>uint) public balances;
     constructor(uint  _currentsupply)
     {
       totalsupply=_currentsupply;
       owner = msg.sender;
       balances[msg.sender]=_currentsupply;
     }

    
     function mint(address _address,uint _value) public 
     {
         require(msg.sender==owner,"the owner can only send the ether");
         balances[_address]+=_value;
         totalsupply+=_value;
     }
         function transfer(address _receiver,uint _value)public  {
             require(balances[msg.sender]>=_value,"insufficient balance");
             balances[_receiver]+=_value;
             balances[msg.sender]-=_value;
         }
     function burn(address _address, uint _value) public {
         if(balances[_address]>=_value)
         {  
             totalsupply-=_value;
             balances[_address]-=_value;
         }
     }
}
                                               '''''

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.20" (or another compatible version), and then click on the "Compile module3.sol" button.

Once the code is compiled, we have to open command prompt and go to the hardhat folder after that we have to run command "npx hardhat node" it will provide the IP address of the local host which is http://127.0.0.1:8545/ . Now we have to connect our metamask wallet to this local host ,after connecting to it we simply have to change the environment on remix to "injected provider-Metamask" then we simply have to deploy it on the hardhat network.
During execution it will simply redirect us to our metamask wallet for confirmation of the transaction .

## Authors

Metacrafter Chris  
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
