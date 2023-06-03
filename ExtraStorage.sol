// SPDX - LICENSE-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // + 5
    // override 
    // virtual overrride
    function store(uint256 _favoriteNumber) public overrride {
        favouriteNumber = _favoriteNumber + 5;
    }
}