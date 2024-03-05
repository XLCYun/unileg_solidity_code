// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeDynamicArray {
    int[] public storageArray; // storage 存储区动态数组

    function test() public returns (uint, uint) {
        storageArray.push(10); // storage 动态数组，支持 push

        // memory 内存区动态数组，未指向任何数组，长度为0
        int[] memory memoryArray;
        uint initLength = memoryArray.length;

        // 不可以，memory 内存区动态数组不支持 push/pop
        // memoryArray.push(10);

        // 但是可以指向一个新的内存区数组
        memoryArray = new int[](1); 
        memoryArray[0] = 0;

        // 手动扩容，分配一块更大的数组
        int[] memory tmp = new int[](2);
        tmp[0] = memoryArray[0]; // 把 memoryArray 中的元素拷贝到新数组
        memoryArray = tmp;       // memoryArray 指向新的数组

        memoryArray[1] = 1; // 成功扩容
        return (initLength, memoryArray.length);
    }
}
