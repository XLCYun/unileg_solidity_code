// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionArg {
    // 只使用中间的参数 a
    function getMiddle(int, int a, int) public pure returns (int) {
        return a;
    }
}
