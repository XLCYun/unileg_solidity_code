// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract TernaryOperator {
    /// @notice 判断是否为偶数
    function isEven(uint n) public pure returns (string memory) {
      return n % 2 == 0 ? "n is even" : "n is odd";
    }
}
