// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC4626, ERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title AdvancedStakingVault
 * @author Hesam Qorbani
 * @notice Professional implementation of a tokenized strategy vault using ERC-4626.
 * @dev Features include gas-optimized constants and Checks-Effects-Interactions pattern.
 */
contract AdvancedStakingVault is ERC4626, Ownable {
    
    uint256 public constant REWARD_RATE = 5; 

    error ZeroAmount();

    constructor(IERC20 _asset) 
        ERC4626(_asset) 
        ERC20("Staked Hesam Token", "sHESAM") 
        Ownable(msg.sender)
    {}

    /**
     * @notice Deposits assets into the vault.
     * @param assets Amount of underlying tokens to deposit.
     * @param receiver Address to receive the vault shares.
     */
    function deposit(uint256 assets, address receiver) public override returns (uint256) {
        if (assets == 0) revert ZeroAmount();
        return super.deposit(assets, receiver);
    }

    /**
     * @dev Example logic for internal reward distribution tracking.
     */
    function getPerformanceFee() external pure returns (uint256) {
        return REWARD_RATE;
    }
}