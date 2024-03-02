// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.24;

contract ValueTypeInteger {
  function div() public pure {
    int128 a = 2;
    int128 b = 1;
    fixed c = fixed(b) / fixed(a); // 显式转换为定点小数，可以
    fixed c = b / a;               // 不可以
  }
}
