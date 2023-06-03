// SPDX-LICENSE

pragma solidity ^0.8.0;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library PriceConverter {

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


}