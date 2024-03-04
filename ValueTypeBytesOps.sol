// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeBytesOps {
    function test() public returns (bool) {
      bytes8 a = 0x0000000000000001;
      bytes8 b = 0x1000000000000000;
      return a > b;
    }
}
