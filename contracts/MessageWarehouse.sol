// Licencia
//SPDX-License-Identifier: LGPL-3.0-only

// Version 
pragma solidity 0.8.24;

contract MessageWarehouse{
    string internal message = "";

    modifier checkPassword(string memory password_){
        if (keccak256(abi.encodePacked(password_)) != keccak256(abi.encodePacked("almeria"))) revert();
        _;
    }

    event SendMessage(string message_);
    event ReadMessage(string message_);


    function readMessage(string memory password_) public checkPassword(password_) returns(string memory message_){
        message_ = message;
        emit ReadMessage(message_);
    }

    function sendMessage(string memory password_, string memory message_) public checkPassword(password_) returns(string memory status_){
        message = message_;
        status_ = "The message has been sent";
        emit SendMessage(message_);
    }

    function deleteMessage(string memory password_) public checkPassword(password_) returns(string memory message_){
        message = "";
        message_ = "The message has been deleted";
        emit SendMessage(message_);
    }
}