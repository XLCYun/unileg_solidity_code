// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

/// @title 合约标题
/// @author 合约作者
/// @notice 为终端用户解释合约作用
/// @dev 为开发人员提供额外的细节
contract Tank {
    /// @notice 为终端用户解释函数功能
    /// @dev 为开发人员提供额外的细节
    /// @param value 解释参数意义，此处为用户需要的以太币数量
    /// @return 返回值类型以及代表的意义，如 true 表示操作成功
    function faucet(uint value) public returns (bool) {
        require(value <= address(this).balance, unicode"以太币余额不足");
        payable(msg.sender).transfer(value);
        return true;
    }

    receive() external payable {}
}
