// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionModifierRuturn {
    int256 public a;

    modifier returnModifier() {
        return;
        _;
    }

    function addOne() public returnModifier returns (int) {
        // 由于 returnModifier 会提前返回，以下函数体代码将不会被执行
        a++;
        return a;
    }
}
