// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract ForLoop {
    function sum(uint n) public pure returns (uint) {
      uint res = 0;
      // 计算 1+2+...+n
      for(uint i = 0; i <= n; i++) {
        res = res + i;
      }
      return res;
    }
}
