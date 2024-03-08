// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Tuple {
    // 返回一个 (int, int) 型的二元元组
    function position() internal pure returns (int x, int y) {
        return (1, 2);
    }

    function test() internal pure {
        // 解构赋值
        (int x, int y) = position();
    }
}
