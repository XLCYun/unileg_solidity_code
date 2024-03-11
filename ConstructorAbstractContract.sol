// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Base {
    uint x;

    constructor(uint x_) {
        x = x_;
    }
}

// 未给出 Base 构造函数参数，必须标识为抽象函数
abstract contract AbstractBase is Base {
    constructor() {
        x += 2;
    }
}

contract Implement1 is AbstractBase {
    // 给出祖先合约 Base 的构造函数参数
    constructor() Base(7) {}
}
