// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Event {
    // 定义一个事件 SomebodyCall，接受两个参数
    event SomebodyCall(string name, uint time);

    function call(string calldata name) public {
        // 发送事件 SomebodyCall
        emit SomebodyCall(name, block.timestamp);
    }
}
