// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Base {
    uint x;

    constructor(uint x_) {
        x = x_;
    }
}

contract C is Base {
    // Base(x_) 传递参数给 Base 构造函数
    constructor(uint x_) Base(x_) {
        // Base.constructor 先调用过，x 值最终为 7
        x += 2;
    }
}
