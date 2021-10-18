// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../access/Ownable.sol";

/*
This contract performs all the staking operations, 
    - Stake user tokens on a DeFi platform 
    - Unstake tokens 
    - Issue Dapp tokens as benefits
    - Add certain allowed tokens to the users portfolio 
    - Get ethereum value of the position via chainlink
*/

contract tokenFarm is Ownable {

    address payable[] public allowedTokens;

    modifier amountGreaterThanZero(uint256 amount) {
        require (amount > 0, "Your amount is not greater than 0");
        _;
    }

    modifier tokenIsAllowed(address tokenAddress) {
        bool answer = false;
        for (uint256 index = 0; index < allowedTokens.length; index ++) {
            if (allowedTokens[index] == tokenAddress) {
                answer = true;
            }
        }
        require(answer, "This token cannot be staked");
        _;
    }

    
    constructor() public {

    }

    function stakeTokens(uint256 amount, addressToken) public payable amountGreaterThanZero tokenIsAllowed{

    }

    function addAllowedTokens(address tokenAddress) public onlyOwner {
        allowedTokens.push(tokenAddress);
    }

}
    