// SPDX-License-Identifier: MIT
// Rutvik Choudhari - 2019130010 - BE Computers
pragma solidity >= 0.7.0;

contract Registration {
    string name;
    string email;
    string contact;
    string college;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require (msg.sender == owner, "Only owner can access.");
         _;
    }

    function set(string memory _name, string memory _email, string memory _contact, string memory _college) public {
        name = _name;
        email = _email;
        contact = _contact;
        college = _college;
    }

    function get() public view onlyOwner returns(string memory, string memory, string memory, string memory) {
        return (name, email, contact, college);
    }
}
