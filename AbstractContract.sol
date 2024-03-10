// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

abstract contract SayHiSayBye {
    function sayHi() external virtual returns (string memory);

    function sayBye() external virtual returns (string memory);
}

// 继承另一个抽象合约，只实现其中的 sayHi 虚函数
abstract contract SubSayHiSayBye is SayHiSayBye {
    function sayHi() external pure override returns (string memory) {
        return "Hi";
    }
}

contract Greeting is SubSayHiSayBye {
    function sayBye() external pure override returns (string memory) {
        return "Bye";
    }
}
