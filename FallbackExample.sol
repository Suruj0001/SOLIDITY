// SPDX-LICENSE-Identifier: MIT
pragma solidity ^0.8.7;

contract FallbackExample {
    uint256 public result;

    receive() external payable {
        result = 1;
    }

    fallback() external payable {
        result = 2;
    }

    constructor(){
        i_owner = msg.sender;
    }
}