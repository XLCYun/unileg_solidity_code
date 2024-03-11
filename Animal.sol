// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Animal {
    function run() public {}
}

// Man 继承 Animal 合约
contract Man is Animal {
    // Man 新增 think 函数
    function think() public {}
}

contract Test {
    function test() public {
        // Animal 可调用 run
        Animal a = new Animal();
        a.run();
        // Man 可调用继承自 Animal 的 run 函数
        Man man = new Man();
        man.run();
        // 以及自己新增的 think 函数
        man.think();
    }
}
