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
