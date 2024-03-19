// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Tank {
    /// @notice 水龙头，提供 `value` 个以太币用于测试
    function faucet(uint value) public {
        payable(msg.sender).transfer(value);
    }
}
