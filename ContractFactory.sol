// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/// @title 用户合约
contract UserContract {
    address owner;
    string nickname;

    constructor(string memory _nickname) {
        owner = msg.sender;
        nickname = _nickname;
    }
}

/// @title 合约工厂
contract ContractFactory {
    mapping(address => UserContract) public contractMap; // 记录每个用户的合约

    /// @notice 创建用户合约
    function createContract(string calldata nickname) external {
        UserContract c = new UserContract(nickname);
        contractMap[msg.sender] = c;
    }
}
