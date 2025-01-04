// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessegeManager {
    string private message;
    address public owner;

    event MessageUpdated(string oldMessage, string newMessage);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    constructor(string memory initialMessage) {
        message = initialMessage;
        owner = msg.sender;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function updateMessage(string memory newMessage) public onlyOwner {
        string memory oldMessage = message;
        message = newMessage;
        emit MessageUpdated(oldMessage, newMessage);
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid address");
        owner = newOwner;
    }
}
