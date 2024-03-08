// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract MemoryAssigment {
    // 返回一个 (int, int) 型的二元元组
    function position() internal pure returns (int x, int y) {
        return (1, 2);
    }

    function test() internal pure {
        // 解构赋值
        (int x, int y) = position();

        // 如果只需要其中一个值，也可以忽略另一个解构出来的值
        (x, ) = position();

        // 也可以这样赋值
        (x, y) = (3, 4);

        // 甚至用于交换两个变量的值
        (x, y) = (y, x);
    }
}
