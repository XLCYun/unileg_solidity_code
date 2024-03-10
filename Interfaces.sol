// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

/// @title 打招呼接口
interface SayHi {

    // 打招呼语言
    enum Language {
        English,
        Chinese,
        French,
        German
    }

    // 来源国家
    struct Contry {
        string name;
        Language lang;
    }

    function sayHi() external returns (string memory);
}
