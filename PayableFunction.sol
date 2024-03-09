// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionOverload {
    int256 public a;

    modifier fnModifier() {
        _;
    }

    function addOne() public fnModifier returns (int) {
        a++;
        return a;
    }

    function addOne(int256 n) internal returns (uint) {
        a += n;
        return uint(a);
    }
}
