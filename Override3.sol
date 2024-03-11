// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Greeting {
    // virtual 标志的虚函数，带有默认实现
    function sayHi() public virtual returns (string memory) {
        return "Hi!";
    }
}

contract ChineseGreeting is Greeting {
    // 虚函数，且重写了 Greeting.sayHi
    function sayHi() public pure virtual override returns (string memory) {
        return unicode"你好！";
    }
}

contract ChinesePolitelyGreeting is ChineseGreeting {
    // 不是虚函数，重写了 ChineseGreeting.sayHi
    function sayHi() public pure override returns (string memory) {
        return unicode"您好！";
    }
}
