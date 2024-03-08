// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract CalldataAssigment {
    function fn(int[] memory memoryA, int[] storage storageA) internal view {
        int[] calldata calldataA;

        // 不合法，calldata 引用必须指向 calldata 存储区域
        // 因此需要创建一个 calldata 存储块，把 memoryA 中的内存拷贝到 calldata
        // 然后让 calldataA 指向该新创新的存储块，但是 calldata 存储区域是只读的
        // 且只有调用外部函数时才会为函数参数分配新的存储块，因此该拷贝不可能发生
        // 因此以下操作非法
        calldataA = memoryA;

        // 与上面同理
        calldataA = storageA;

        // 外部函数调用 this.externalFn，Solidity(EVM) 为该外部函数调用分配了一块 calldata
        // 存储块，用于保存函数参数 calldataB，因此可以将 memoryA 数组拷贝到 该新的 calldata 存储块中
        // 函数参数 calldataB 将指向该新的 calldata 存储块
        // 因此该参数变量赋值合法，该过程涉及到了数组拷贝
        this.externalFn(memoryA);

        // 与上面同理，该过程同样涉及到了数组拷贝，但是从 storage 拷贝到 calldata
        this.externalFn(storageA);
    }

    function externalFn(int[] calldata calldataB) external {}
}