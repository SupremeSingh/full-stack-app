// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*
This is a custom token which is used to return 
the rewards from staking to consumers 
*/

import "./ERC20.sol";
import "../../access/Ownable.sol";

contract DappToken is ERC20, Ownable {

    constructor () public ERC20("Dapp Token", "DAPP"){
        uint256 initialSupply = 10**6;
        _mint(msg.sender, initialSupply);
    }

}