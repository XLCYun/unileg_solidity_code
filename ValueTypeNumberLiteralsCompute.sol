// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeNumberLiteralsCompute {
    function num() public pure returns (int, int, int) {
      return (
        1.5 * 2, // 等于 3，为整数
        (3 / 2) * 2, // 3 / 2 不会取整为 1，而是 1.5，结果为 3，整数
        (2 ** 256 + 1) - 2 ** 256 // 不会溢出，结果仍为 1
      );
    }
}
