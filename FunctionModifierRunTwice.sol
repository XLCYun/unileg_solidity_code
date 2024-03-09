// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionModifierRunTwice {
    int256 public a;

    modifier runTwice() {
        // 连着使用两个函数代码占位符，导致函数代码被执行两次
        _;
        _;
    }

    // 由于被 runTwice 修饰，实际上将导致每调用一次，a 将被增加 2
    function addOne() public runTwice {
        a++;
    }
}
