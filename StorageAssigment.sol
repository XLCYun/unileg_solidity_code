// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract StorageAssigment {
    int[] storageVar;
    function fn(int[] calldata calldataA, int[] memory memoryA) internal view {
        int[] storage storageA;

        // 不合法，storage 引用必须指向 storage 存储块
        // 因此需要创建一个 storage 存储块，把 calldataA 中的内存拷贝到 storage 中
        // 然后让 storageA 指向该新创新的存储块，但是 storageA 存储区域只能通过在合约内
        // 静态声明，而由自己不能动态分配，因此该拷贝不可能发生
        // 因此以下操作非法
        storageA = calldataA;

        // 与上面同理
        storageA = memoryA;

        // 该赋值合法。可以将 calldataA 中的数据拷贝到 storageVar 指向的存储区中
        // 然后 storageVar 仍指向该存储区数据块，该过程发生了数组拷贝
        storageVar = calldataA;

        // 与上面同理，该过程同样涉及到了数组拷贝，但是从 memory 拷贝到 storage
        storageVar = memoryA;
    }
}