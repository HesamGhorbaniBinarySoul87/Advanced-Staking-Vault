// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/AdvancedStakingVault.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DeployVault is Script {
    function run() external {
        // This address is a placeholder for testing purposes
        address mockAsset = 0x1234567890123456789012345678901234567890;
        
        vm.startBroadcast();
        new AdvancedStakingVault(IERC20(mockAsset));
        vm.stopBroadcast();
    }
}