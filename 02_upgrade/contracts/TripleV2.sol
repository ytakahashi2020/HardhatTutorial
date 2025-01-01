// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract TripleV2 is Initializable {
    function initialize() public initializer{

    }
    function triple(uint256 _number) public pure returns (uint256) {
        // it's a mistake
        return _number * 3;
    }
}