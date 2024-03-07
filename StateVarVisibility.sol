// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract StateVarVisibility {
  string public nickname;      // 公共状态变量
  address private owner;       // 私有状态变量
  uint internal userCount;     // 内部状态变量
}
