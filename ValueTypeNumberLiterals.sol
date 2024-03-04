// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeNumberLiterals {
    function num() public pure returns (int, int, int) {
      return (
        0x01,     // 16 进制
        3.14e10,  // 科学计数法
        123_456   // 下划线分隔符
      );
    }
}
