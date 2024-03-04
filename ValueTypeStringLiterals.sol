// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeStringLiterals {
    function num() public pure returns (bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32, bytes32) {
      return (
        "hi",    // 使用双引号
        'hello', // 使用单引号
        "Hello, "  "World!",  // 两相紧连的字符串视为一个字符串
        '\
        add a new line', // 使用 \ 进行断行
        '\'',  // 转义单引号
        "\"",  // 转义双引号
        '\n',  // 转义新行
        '\r',  // 转义换行
        '\t',  // 转义制表符
        '\x35\x32\x30', // '520'：十六进制直接插入字节
        '\u4f60\u597d', // '你好'：直接插入 unicode 码元，使用 utf-8 编码
        unicode"你好 😃" // unicode 字符串，使用 utf-8 编码
      );
    }
}
