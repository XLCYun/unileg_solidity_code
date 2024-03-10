// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

abstract contract Greeting {
    // 默认实现为英文打招呼
    function sayHi() external virtual returns (string memory) {
        return "Hi";
    }

    // 默认实现为英文告别
    function sayBye() external virtual returns (string memory) {
        return "Bye";
    }
}

// 英文版具体合约，可以被实例化
contract EnglishGreeting is Greeting {
  // 内部未重新实现 sayHi, sayBye 两个虚函数
  // 但仍然是合法的，此时将使用虚函数的默认实现
}

