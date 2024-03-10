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
