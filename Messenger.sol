// SPDX-License-Identifier: GPL-3.0
// Chris Orellana
// Solidity Contract Messenger
// August 2021


pragma solidity >=0.7.0 <0.9.0;

contract Messenger {
    
    address owner;
    string[] messages;
    
    constructor() {
        
        owner = msg.sender;
        
    }
    
    function add(string memory newMessage) public {
        
        require(msg.sender == owner);
        // Add the message to the messages array only if the sender of the message is from the Owner.
        messages.push(newMessage);
    
    }
    
    function count() view public returns(uint) {
        
        // Count the items in the array of messages
        return messages.length;
        
    }
    
    function getMessages(uint index) view public returns(string memory) {
        
        // Return back a specific message from the array
        return messages[index];
        
    }
}