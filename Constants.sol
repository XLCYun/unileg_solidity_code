// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

// 文件级别常量
uint constant kg = 1 * 1000;

contract Constants {
    // 合约内定义常量
    uint constant ton = 1 * 1000 * kg;

    function tenTons() public pure returns (uint) {
        return 1 * ton;
    }
}
