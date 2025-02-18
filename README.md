# MessageWarehouse

This repository consists of a simple smart contract for practicing basic concepts in this environment, such as using modifiers and events with functions, learning how to use Remix IDE, and deploying and testing smart contracts locally.

## Features
I have developed a message warehouse, where the user can interact with a message using a password:

- 📖 Read message:  this function allows users to read the currently stored message, if the password is correct.
- 📩 Send message: function with two arguments, the password (to verify if the action can be executed) and the message to be stored.
- ❌ Delete message: if the password is correct, the currently stored message in the warehouse will be deleted.
