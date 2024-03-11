// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Base {
    uint x;

    constructor() {
        x += 1;
    }
}

contract C is Base {
    constructor() {
        // Base.constructor 先调用过，x 值最终为 3
        x += 2;
    }
}
