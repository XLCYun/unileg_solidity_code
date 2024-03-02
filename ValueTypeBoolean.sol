// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.24;

contract ValueType {
  function boolType() private pure {
    bool True = true;
    bool False = false;

    // ! 操作
    assert(!False); // 断言成功
    assert(!True);  // 断言失败

    // && 与操作
    assert(True && False); // 断言失败

    // !! 或操作
    assert(True || False); // 断言成功

    // == 比较相等
    assert(True == False); // 断言失败

    // != 比较不等
    assert(True != False); // 断言成功
  }
}
