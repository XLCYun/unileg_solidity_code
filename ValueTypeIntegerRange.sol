// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract ValueTypeIntegerRange {
  function div() public pure returns (int, int) {
    return (type(int).min, type(int).max);
  }
}
