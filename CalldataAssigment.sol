// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SameRefTypeAssignment {
    function fn(
        int[] calldata calldataA,
        int[] storage storageA,
        int[] memory memoryA
    ) internal pure {

        int[] calldata calldataB;
        int[] memory memoryB;
        int[] storage storageB;
        
        // 合法，calldataB 和 calldataA 现在指向 calldata 中的同一片数据，未发生数组拷贝
        calldataB = calldataA;

        // 合法，memoryB 和 memoryA 现在指向 memory 中的同一片数据，未发生数组拷贝
        memoryB = memoryA;

        // 合法，storageB 和 storageA 现在指向 storage 中的同一片数据，未发生数组拷贝
        storageB = storageA;
    }
}
