pragma solidity ^0.4.1;

contract MyToken {
    mapping (address => uint) public balanceOf;
    event SenderLogger(address);
    event ValueLogger(uint);

   // Initializes contract with initial supply tokens to the creator of the 
   //contract


    // 1 deploy: 200000
   constructor (uint256 initialSupply) public payable {
       // Give the creator all initial tokens 
       balanceOf[msg.sender] = initialSupply;   
   }

   // Send coins
   // 2 balanceOf: "0xca35b7d915458ef540ade6068dfe2f44e8fa733c" --> 200000
   // 3 transfer: "0x14723a09acff6d2a60dcdf7aa4aff308fddc160c", 10
   // 4 balanceOf: "0x14723a09acff6d2a60dcdf7aa4aff308fddc160c" --> 10
   function transfer(address _to, uint256 _value) public payable {

    // Check if the sender has enough
    require(balanceOf[msg.sender] >= _value);

    // Check for overflows
    require(balanceOf[_to] + _value >= balanceOf[_to]); 

    // Subtract from the sender
    balanceOf[msg.sender] -= _value;     

    // Add the same to the recipient               
    balanceOf[_to] += _value;                           
  }

// fallback function
   function () private payable {
      emit SenderLogger(msg.sender);
   }

}
