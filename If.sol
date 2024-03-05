// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract If {
    function test(int n) public pure returns (string memory) {
      // 基本使用
      if(n == 1) {
        return "A";
      }

      // 单语句可省略花括号
      if(n == 2) return "B";

      // if-else 形式
      if(n == 3) return "C";
      else return "D";

      // 非法，1 为 int 型，无法转换为布尔型
      // if(1) return "E";
    }
}
