// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeHexStringLiteral {
    function num() public pure returns (bytes8, bytes8, bytes8) {
      bytes8 a = 0x0000000000001234;
      bytes8 b = hex"1234";  // 0x0102030400000000
      bytes8 c = "\x12\x34"; // 等价于 hex"1234"
      return (a, b, c);
    }
}
