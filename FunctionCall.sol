// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract C {
    function f() public pure {}
}

contract FunctionCall {
    function f() public pure {}

    function caller() public {
        // 内部调用
        f();
        // 外部调用
        this.f();

        C c = new C();
        // 外部调用
        c.f();
    }
}
