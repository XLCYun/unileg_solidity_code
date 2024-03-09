// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionMultipleModifier {
    int256 public a;

    modifier runTwice() {
        // 连着使用两个函数代码占位符，导致函数代码被执行两次
        _;
        _;
    }

    modifier runTriple() {
        _;
        _;
        _;
    }

    function addOne() public runTwice runTriple {
        a++;
    }
}
