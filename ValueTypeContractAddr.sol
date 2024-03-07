// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract A {
    string public name;
}

contract B {
    string public name;
}

contract ValueTypeContract {
    function test() public returns (string memory) {
        A a = new A();
        address aAddr = address(a); // 合约转地址

        A aRef = A(aAddr); // 地址转合约
        string memory result = aRef.name(); // 正常调用

        
        B b = B(aAddr);  // 将合约 A 的地址强制转换为 B
        result = b.name(); // 将触发错误
        return result;
    }
}
