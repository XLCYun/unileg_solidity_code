// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionModifierRun {
    int256 public a;

    modifier run(uint n) {
        for (uint i = 0; i < n; i++) _;
    }

    // 使用修饰符 run(10) 来让函数体 `a++` 执行 10 次，实现 + 10
    function addTen() public run(10) {
        a++;
    }

    // 使用修饰符 run(n) 来让函数体 `a++` 执行 n 次，实现 + n
    function add(uint n) public run(n) {
        a++;
    }
}
