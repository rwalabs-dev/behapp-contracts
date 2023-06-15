// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {ERC20StakingPool} from "staking-contracts/ERC20StakingPool.sol";

contract BehStakingPool is ERC20StakingPool {
    constructor(address stakingToken, address rewardsToken) ERC20StakingPool(stakingToken, rewardsToken) {}
}
