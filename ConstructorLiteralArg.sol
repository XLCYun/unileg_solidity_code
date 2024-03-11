// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Base {
    uint x;

    constructor(uint x_) {
        x = x_;
    }
}

// Base(5) 给出 Base 构造函数参数
contract C is Base(5) {
    constructor() {
        // Base.constructor 先调用过，x 值最终为 7
        x += 2;
    }
}
