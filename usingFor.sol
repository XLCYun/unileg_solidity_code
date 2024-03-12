// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

library L {
    function isEven(int a) internal pure returns (bool) {
        return a % 2 == 0;
    }

    function isOdd(int a) internal pure returns (bool) {
        return a % 2 != 0;
    }
}

// 将库 L 中的所有非 private 函数附加到 int 类型
using L for int;
// 或者，只指定 L.isEven 附加到 int 类型
using {L.isEven, L.isOdd} for int;

contract C {
    function test() public pure returns (bool, bool) {
        int a = 3;
        return (a.isEven(), a.isOdd());
    }
}
