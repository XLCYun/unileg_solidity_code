// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract VarAssignmentCalldata {
  int[] storageA;

  function fn(int[] calldata calldataA) public {
    int[] calldata calldataB;
    int[] memory memoryA;
    int[] storage localStorageA;

    // calldata 引用赋值给 calldata 引用，合法
    calldataB = calldataA;

    // storage 引用赋值给 calldata 引用，不合法
    // 因为 calldata 只能在外部函数调用时，为调用参数创建，且是只读的
    // 不可能新分配一块 calldata 存储空间，然后拷贝 storageA 中的内容过去
    // 再让 calldataB 指向该新的 calldata 存储空间，因此该赋值非法
    calldataB = storageA;

    // memory 引用赋值给 calldata 引用，不合法
    // 不可能新分配一块 calldata 存储空间，然后拷贝 memoryA 中的内容过去
    // 再让 calldataB 指向该新的 calldata 存储空间，因此该赋值非法
    calldataB = memoryA;
    this.externalCall(memoryA);
  }

  function externalCall(int[] calldata arg) public {}
}
