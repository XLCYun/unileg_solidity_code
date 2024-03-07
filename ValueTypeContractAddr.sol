// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract A {}

contract B {
    string public name;
}

contract ValueTypeContract {
    function test() public returns (string memory) {
        A a = new A();
        address aAddr = address(a);

        // 强制转换为 B 地址
        B b = B(aAddr);
        return b.name();  // 将触发错误
    }
}
