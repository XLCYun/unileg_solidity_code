// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionVisibility {
    // 公共函数
    function publicFunc(string memory name) public {}

    // 外部函数
    function externalFunc(string calldata name) external {}

    // 内部函数
    function internalFunc(string memory name) internal {}

    // 私有函数
    function privateFunc(string memory name) private {}
}
