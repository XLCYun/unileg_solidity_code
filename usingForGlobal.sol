// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

// 自定义类型 Int
type Int is int256;

function isEvenForInt(Int a) pure returns (bool) {
    return Int.unwrap(a) % 2 == 0;
}

// 将 isEvenForInt 附加到 Int 类型，全局生效
// 指定全局生效时，只能是自定义的类型
using {isEvenForInt} for Int global;

contract C {
    function test() public pure returns (bool) {
        Int a = Int.wrap(3);
        return a.isEvenForInt();
    }
}
