// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Adress {
    address private owner = msg.sender;

    function getOwner() public view returns(address){
        return owner; 
    }
}