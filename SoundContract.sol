// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

contract HelloSound {
    address immutable public owner;

    constructor () {
        owner = msg.sender;
    }

    modifier OnlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function helloFromSContract() public pure returns (string memory) {
        string memory message = "Hello, user!";
        return message; 
    }

    function helloFromOwner() public view OnlyOwner() returns (string memory) {
        string memory message = "I`m Soundprod!";
        return message; 
    }
}