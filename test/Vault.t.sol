// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/AdvancedStakingVault.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockToken is ERC20 {
    constructor() ERC20("Test Token", "TST") {
        _mint(msg.sender, 1000 ether);
    }
}

contract VaultTest is Test {
    AdvancedStakingVault public vault;
    MockToken public token;
    address public user = address(0xABC);

    function setUp() public {
        token = new MockToken();
        vault = new AdvancedStakingVault(token);
        token.transfer(user, 100 ether);
    }

    /**
     * @notice Fuzz test to ensure vault integrity across various deposit amounts.
     */
    function testFuzz_Deposit(uint256 amount) public {
        amount = bound(amount, 1, 100 ether);
        
        vm.startPrank(user);
        token.approve(address(vault), amount);
        vault.deposit(amount, user);
        vm.stopPrank();

        assertEq(vault.balanceOf(user), amount);
        assertEq(token.balanceOf(address(vault)), amount);
    }
}