// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract WhileLoop {
    function sum(uint n) public pure returns (uint) {
      uint res = 0;
      // 计算 1+2+...+n
      do {
        res += n;
        n = n - 1;
      } while( n > 0);
      return res;
    }
}
