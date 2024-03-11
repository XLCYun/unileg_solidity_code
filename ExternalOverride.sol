// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Base {
    function zero() external virtual returns (uint256) {
        return 0;
    }
}

contract C is Base {
    // 用一个 public override 重写
    uint256 public override zero = 1;
}
