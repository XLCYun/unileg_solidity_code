// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionType2 {
    function test() public pure {
        function() fn1;
        // 带参数
        function(uint, int) fn2;
        // 带返回值
        function() returns (int) fn3;
        // 带可见性声明
        function() external fn4;
        // 带状态可变性声明
        function() pure fn5;
    }
}
