// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import {ERC20MintableTest} from "../src/ERC20MintableTest.sol";

contract DeployERC20MintableTest is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        new ERC20MintableTest();

        vm.stopBroadcast();
    }
}
