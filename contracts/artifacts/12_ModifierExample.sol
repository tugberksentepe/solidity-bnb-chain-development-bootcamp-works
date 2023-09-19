// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ModifierExample {
    address public owner;
    uint public myNumber;

    constructor(uint _myNumber) {
        owner = msg.sender;
        myNumber = _myNumber;
    }

    modifier onlyOwnerOrAdress(address _allowedAdress) {
        require(msg.sender == owner || msg.sender == _allowedAdress, "Only the owner or an allowed adress can call this function.");
        _;
    }

    function changeNumber(uint _newNumber) public onlyOwnerOrAdress(address(0x456)) {
        myNumber = _newNumber;
    }
}