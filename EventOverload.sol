// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Event {
    // 事件重载
    event SomebodyCall(string indexed name);
    event SomebodyCall(string indexed name, uint256 indexed time) anonymous;

    function call(string calldata name) public {
        // 发送事件 SomebodyCall
        emit SomebodyCall(name, block.timestamp);
    }
}
