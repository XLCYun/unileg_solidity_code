// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Base {
  // 函数体运行五次的修饰符
  modifier runFiveTime() virtual {
    for(uint i = 0; i < 5; i++) _;
  }
}

contract C is Base {
  // 重写 Base.runFiveTime 函数修饰符
  modifier runFiveTime() override {
    _; _; _; _; _;
  }
}
