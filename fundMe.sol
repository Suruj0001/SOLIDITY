// Get fuinds from users
//withdraw funds
// Set a minimum funding value in USD

//SPDX-License-Identifier: Mit
pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minimumUsd = 50 * 1e18;

    function fund() public payable{
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract  
        //require(msg.value > 1e18,  "Didn't send enough"); // le18 == 1 * 10 ** 18 == 100000000000000000
        //require(getConversionRate(msg.value) >= minimumUsd, "Didnt send enough"); // 1e18 = 1 * 10 ** 18 == 100000000000000000
        require(msg.value >= minimumUsd, "Didn't send Enough");
    }

    function getPrice() public view returns(uint256){
        // ABI 
        // Addrress 
        AggregatorV3Interface getPrice = AggregatorV3Interface(//testnet)
        //(uint80 roundID, int price, uint startedAt, uint timeStamp, uint80 answeredInRound) = priceFeed.latestRound();
    }

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface getPrice = AggregatorV3Interface(//testnet)
        {,int256 price...} = priceFeed.latestRoundData();
    }

    function getPrice() public {
        function getConversionRate() public {}
    }

    function getConversionRate(uint256 ethAmount) public view return (uint256){
        uint256 ethPrice = getPrice();
        //uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        // return ethAmountInUsd;
        uint256 ethAmountInUsd = (ethPrice * ethAmount) 1e18;
        return ethAmountInUsd;

    }

    //function withdraw(){}

    //rest the array
    // funders = new address[]{0};
    // //actually withdraw the funnels
    // //send 
    // //cell
    // // payable(msg.sender.transfer[address(this.balance);
    // // //send
    // // bool sendSuccess = payable(msg.sender).send(address(this).balance);
    // // require(sendSuccess, "Send failed");
    // //call
    // {bool callSuccess , ) = payable(msg.sender.call{value: address(this).balance}(""));
    // require(callSuccess, "Call failed");
    // }
    
}