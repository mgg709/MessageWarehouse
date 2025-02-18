// Licencia
//SPDX-License-Identifier: LGPL-3.0-only

// Version 
pragma solidity 0.8.24;

contract MessageWarehouse{
    string internal message = "";

    modifier checkChannel(string memory channel_){
        if (keccak256(abi.encodePacked(channel_)) != keccak256(abi.encodePacked("alpha"))) revert();
        _;
    }

    event SendMessage(string message_);
    event ReadMessage(string message_);


    function readMessage(string memory channel_) public checkChannel(channel_) returns(string memory message_){
        message_ = message;
        emit ReadMessage(message_);
    }

    function sendMessage(string memory channel_, string memory message_) public checkChannel(channel_) returns(string memory status_){
        message = message_;
        status_ = "The message has been sent";
        emit SendMessage(message_);
    }

    function deleteMessage(string memory channel_) public checkChannel(channel_) returns(string memory message_){
        message = "";
        message_ = "The message has been deleted";
        emit SendMessage(message_);
    }
}