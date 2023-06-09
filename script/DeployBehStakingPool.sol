// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import {BehStakingPool} from "../src/BehStakingPool.sol";

contract DeployBehStakingPool is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        address stakingTokenAddress = vm.envAddress("STAKING_TOKEN_ADDRESS");
        address rewardsTokenAddress = vm.envAddress("REWARDS_TOKEN_ADDRESS");

        vm.startBroadcast(deployerPrivateKey);

        new BehStakingPool(stakingTokenAddress, rewardsTokenAddress);

        vm.stopBroadcast();
    }
}
