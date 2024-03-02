// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Counter {
    uint[] nums;
    function addBy(uint[] calldata increments) public pure returns (uint[] calldata n) {
      n = increments;
    }
}
