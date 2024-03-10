// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Immutable {
    uint256 tenTons;

    /* 合约内定义不变量 */
    // 可以在声明时赋值，相当于在 constructor 开始时就赋值
    uint256 immutable KG = 1 * 1000;
    uint256 immutable TON;
    address immutable owner;
    uint256 immutable neverAssigned;

    constructor() {
        // 可以多次赋值
        TON = 100 * KG;
        TON = 1000 * KG;

        // 使用 immutable 的 owner，后续无法再修改
        owner = msg.sender;
        tenTons = 10 * TON;
    }
}
