pragma solidity ^0.4.1;

contract MyToken {
    mapping (address => uint) public balanceOf;
    event SenderLogger(address);
    event ValueLogger(uint);

   // Initializes contract with initial supply tokens to the creator of the 
   //contract

   constructor (uint256 initialSupply) public payable {
       // Give the creator all initial tokens 
       balanceOf[msg.sender] = initialSupply;   
   }

   // Send coins
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
