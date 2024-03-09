// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionReturns {
    function getPosition() public pure returns (int, int) {
        return (1, 2);
    }

    function getX() public pure returns (int) {
        // 使用解构赋值，获取多个返回值，第二个返回值在此处不使用，可忽略
        (int x, ) = getPosition();
        return x;
    }
}
