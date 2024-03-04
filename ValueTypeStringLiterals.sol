// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeStringLiterals {
    function num() public pure returns (bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32) {
      return (
        "hi",
        'hello',
        "Hello, "  "World!",
        '\
        add a new line',
        '\'',
        '\"',
        '\n',
        '\r',
        '\t',
        '\x35\x32\x30',
        '\u4f60\u597d',
        unicode"你好 😃"
      );
    }
}
