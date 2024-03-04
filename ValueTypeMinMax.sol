// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 定义一个新类型 EvenInt，其实际存储类型为 int
type EvenInt is int;

contract EvenIntContract {
    function test() public pure returns (int) {
        EvenInt a = EvenInt.wrap(1234); // 将 int 包裹为 EvenInt
        int b = EvenInt.unwrap(a);      // 将 EvenInt 解包为 int

        return b;
    }
}
