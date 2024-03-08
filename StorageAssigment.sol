// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract MemoryAssigment {
    function fn(
        int[] storage storageA,
        int[] calldata calldataA
    ) internal pure {
        int[] memory memoryA;

        // 该赋值合法，memory 引用必须指向 memory 存储块，memory 存储空间总是可以动态创建
        // 因此可以创建一个 memory 存储块，把 calldataA 中的内存拷贝到 memory 中
        // 然后让 memoryA 指向该新创新的内存块，该过程发生了数组拷贝
        memoryA = calldataA;

        // 与上面同理，也发生了数组拷贝，但是从 storage 拷贝到 memory
        memoryA = storageA;
    }
}
