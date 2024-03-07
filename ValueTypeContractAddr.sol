// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract A {}

contract ValueTypeContract {
    function test() public {
        A a = new A();
        address aAddr = address(a); // 合约转地址
        A aRef = A(aAddr); // 地址转合约
    }
}
