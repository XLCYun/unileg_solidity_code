// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

/// @title 打招呼接口
interface SayHi {
    // 可以声明枚举
    enum Language {
        English,
        Chinese,
        French,
        German
    }

    // 可以声明结构体
    struct Contry {
        string name;
        Language lang;
    }

    // 声明外部接口函数，默认为 virtual
    function sayHi() external returns (string memory);
}

// 实现接口 SayHi
contract Friend is SayHi {
    function sayHi() external returns (string memory) {}
}
