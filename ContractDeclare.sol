// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ContractDeclare {
    address[] usersAddress;               // 状态变量
    mapping (address => uint) tokenCount; // 状态变量
    type Age is uint8;                    // 自定义类型
    struct User {                         // struct 结构体
      address addr;
      string nickname;
      Age age;
    }
    User[] public users;                         // 状态变量

    // 合约函数
    function register(string calldata nickname, Age age) external {
      User memory newUser;
      newUser.nickname = nickname;
      newUser.age = age;
      newUser.addr = msg.sender;
      users.push(newUser);
    }
}
