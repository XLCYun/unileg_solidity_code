// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract Scope {
    function f() public pure {
        uint i; // 1号

        {
            i = 2;   // 此处 i 为1号变量
            uint i;  // 2号
            i = 3;   // 此处 i 为2号变量
        }

        {
            i = 2;   // 此处 i 为1号变量
            uint i;  // 3号
            i = 3;   // 此处 i 为3号变量
        }

        i = 4;  // 此处 i 为1号变量
    }
}
