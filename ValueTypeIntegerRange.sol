// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract ValueTypeIntegerRange {
  function range() public pure returns (int8, int8) {
    return (type(int8).min, type(int8).max);
  }
}
