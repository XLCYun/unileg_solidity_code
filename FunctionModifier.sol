// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

library Lib {
    modifier runTwice() {
        _;
        _;
    }
}

contract FunctionModifier {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    // 定义一个函数修饰符
    modifier onlyOwner() {
        // 检查调用者必须是合约拥有者
        require(msg.sender == owner, unicode"调用者非合约拥有者");
        _; // 该下划线为函数代码占用符，表示被修饰的函数代码应当被插在此处
    }

    function fn1() public onlyOwner {}

    function fn2() public onlyOwner {}

    function fn3() public onlyOwner {}
    // ...
}
