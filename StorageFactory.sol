// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // boolean , uint , bytes , address
    //bool hasFavouriteNumber = true;
    // uint256 hasFavouriteNumber = 123; //1bit = 8bytesk
    // bytes32 favbytes = "cat";
    // string favint = -5;
    uint256 public favouriteNumber;
    People public person = People({favouriteNumber: 2, name: "Suruj"});
    People public person2 = People({favouriteNumber: 2, name: "Manash"});


    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favouriteNumber;
        string name;

    }

    //uint256 People favouriteNumberList;
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favouriteNumber = _favoriteNumber;
        //favouriteNumber = _favoriteNumber + 1;
        //uint256 testVar = 5;
    }

    //view , pure 
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }


    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People({favouriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


}



contract StorageFactory {
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }

}