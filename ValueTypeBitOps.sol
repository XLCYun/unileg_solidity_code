// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeBitOps {
    function bitOps() public pure returns (int8, uint8, uint8, uint8, uint8, uint8, uint8) {
      return (
        ~int8(0),     // ~(00000000) = 11111111 = -1
        ~uint8(0),    // ~(00000000) = 11111111 = 255 
        uint8(0xff) & uint8(0), // 11111111 & 00000000 = 00000000
        uint8(0xff) | uint8(0), // 11111111 | 00000000 = 00000000
        uint8(0xf0) ^ uint8(0), // 11110000 ^ 00000000 = 11110000
        uint8(1) << 1, // 00000001 << 1 = 00000010
        uint8(1) >> 1  // 00000001 >> 1 = 00000000 ，不导致溢出
      );
    }
}
