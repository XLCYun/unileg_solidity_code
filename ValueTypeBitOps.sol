// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeBitOps {
    function bitOps() public pure returns (int8, uint8, uint8, uint8, uint8, uint8, uint8) {
      return (~int8(0), ~uint8(0), uint8(0xff) & uint8(0), uint8(0xff) | uint8(0), uint8(0xf0) ^ uint8(0), uint8(1) << 1, uint8(1) >> 1);
    }
}
