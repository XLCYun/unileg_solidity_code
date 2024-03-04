// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeNumberLiterals {
    function num() public pure returns (int, int, int, int) {
      return (
        0x01,
        1.5 * 2,
        3.14e10,
        123_456
      );
    }
}
