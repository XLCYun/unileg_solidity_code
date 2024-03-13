// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Event {
    // 定义一个事件 SomebodyCall，接受两个参数，指定为索引
    event SomebodyCall(string indexed name, uint256 indexed time);

    function call(string calldata name) public {
        // 发送事件 SomebodyCall
        emit SomebodyCall(name, block.timestamp);
    }
}
