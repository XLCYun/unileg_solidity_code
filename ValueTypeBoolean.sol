// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeBoolean {
  function boolType() private pure {
    bool True = true;
    bool False = false;

    // ! 取反操作
    assert(!False); // 断言成功
    assert(!True);  // 断言失败

    // && 与操作
    assert(True && False); // 断言失败

    // || 或操作
    assert(True || False); // 断言成功

    // == 比较相等
    assert(True == False); // 断言失败

    // != 比较不等
    assert(True != False); // 断言成功
  }
}
