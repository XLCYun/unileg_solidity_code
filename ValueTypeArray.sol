// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeArray {
    int[] public storageArray; // 只有 storage 存储区，才支持长度可变的动态数组

    function test() public returns (int[5] memory, uint, uint) {
        int[5] memory memoryArray; // 长度为 5 的 int 数组
        storageArray.push(10);     // storage 动态数组，支持 push
        storageArray.push();       // 默认插入零值
        storageArray.pop();        // 使用 pop 弹出元素
        memoryArray[0] = 10;       // 静态数组不支持 push，使用索引方式赋值
        return (
          memoryArray, 
          memoryArray.length,      // 支持使用 .length 获取长度
          storageArray.length      // 支持使用 .length 获取长度
        );
    }
}
