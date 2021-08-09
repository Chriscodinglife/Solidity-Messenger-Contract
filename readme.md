# Solidity Ethereum Messages Smart Contract

![image1](images/ethereum.png)
![image2](images/smartcontract.jpg)

## Introduction

This is a Smart Contract created with the Solidity Programming Language and tested on the Rinkeby Ethereum Test Network.

## Goals for Learning from this Project:
The goals of this smart contract is to learn how to do the following:

- Recieve a message in a string format
- Append the message into an array
- Make sure that message only comes from the owner of the smart contract
```sol
function add(string memory newMessage) public {
        
        require(msg.sender == owner);
        // Add the message to the messages array only if the sender of the message is from the Owner.
        messages.push(newMessage);
    
	}
```

- Allow to count the number of message that are in the Array
```sol
function count() view public returns(uint) {
        
        // Count the items in the array of messages
        return messages.length;
        
    }
```

- Allow a user to return a specific message from the array.
```sol
function getMessages(uint index) view public returns(string memory) {
        
        // Return back a specific message from the array
        return messages[index];
        
    }
```

## Lessons Learned

| Lesson Learned | Need To Work On |
| :------------- | :----------: |
| What a Smart Contract is | Understanding State Mutability and Visibility |
| How To Interact With A Smart Contract | Understanding the Solidity IDE Interface |
| How Transactions can include Data In A Smart Contract | Practice on more constructor calls |
| How To Ensure A Function only interacts with Data When It is From the Owner Of the Smart Contract | How To Create Child Parent Smart Contracts |

| Column 1       | Column 2     | Column 3     |
| :------------- | :----------: | -----------: |
|  Cell Contents | More Stuff   | And Again    |
| You Can Also   | Put Pipes In | Like this \| |

