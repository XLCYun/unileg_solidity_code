// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Greeting {
    // virtual 标志的虚函数，带有默认实现
    function sayHi() public virtual returns (string memory) {
        return "Hi!";
    }
}

contract ChineseGreeting is Greeting {
    function sayHi() public pure override returns (string memory) {
        return unicode"你好！";
    }
}
