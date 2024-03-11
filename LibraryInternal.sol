// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

library Math {
    // 库中的内部函数
    function max(uint a, uint b) internal pure returns (uint) {
        return a > b ? a : b;
    }
}

contract LibraryInternal {
    function test() public pure {
        Math.max(0, 1);
    }
}
