// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

/// @dev bytes32 实现的小集合，每个元素占1个字节，最多32个元素，元素值 1-255，0 视为空位
type SmallSet is bytes32;

/// @dev 数组实现的集合操作
library SmallSetOp {
    /// @notice 判断集合内是否存在存在某元素
    /// @param self 集合结构体
    /// @param v 要查找的元素
    /// @return bool true 表示存在，false 表示不存在
    function has(SmallSet self, uint8 v) internal pure returns (bool) {
        if (v == 0) return false;
        for (uint256 i = 0; i < 32; i++)
            if (uint8(SmallSet.unwrap(self)[i]) == v) return true;
        return false;
    }

    /// @notice 在原集合的基础上，插入新元素，并返回插入后的新集合
    /// @param self 原集合
    /// @param v 要插入的元素
    /// @return 返回原集合插入元素后的集合
    function insert(SmallSet self, uint8 v) internal pure returns (SmallSet) {
        if (has(self, v)) return self;
        bytes32 b = SmallSet.unwrap(self);
        for (uint256 i = 0; i < 32; i++)
            if (b[i] == 0x00)
                return SmallSet.wrap(b | (bytes32(bytes1(v)) >> (8 * i)));
        return self;
    }

    /// @notice 从集合中移除元素，并返回移除目标元素后的新集合
    /// @param self 集合
    /// @param v 要移除的元素
    /// @return SmallSet 返回移除目标元素后的新集合
    function remove(SmallSet self, uint8 v) internal pure returns (SmallSet) {
        bytes32 b = SmallSet.unwrap(self);
        bytes1 target = bytes1(v);

        for (uint256 i = 0; i < 32; i++)
            if (b[i] == target)
                return SmallSet.wrap(b & (~(bytes32(hex"ff") >> (8 * i))));
        return self;
    }

    /// @notice 并集操作
    /// @param self 并集集合1
    /// @param unionSet 并集集合2
    /// @return 返回集合1与集合2并集后的结果集合
    function union(SmallSet self, SmallSet unionSet) internal pure returns (SmallSet) {
        bytes32 b = SmallSet.unwrap(unionSet);
        for (uint256 i = 0; i < 32; i++) self = insert(self, uint8(b[i]));
        return self;
    }

    /// @notice 交集操作
    /// @param self 集合1
    /// @param diffSet 集合2：集合1中要移除的元素的集合
    /// @return 返回集合1中移除集合2中的元素之后的新集合
    function diff(SmallSet self,SmallSet diffSet) internal pure returns (SmallSet) {
        bytes32 b = SmallSet.unwrap(diffSet);
        for (uint256 i = 0; i < 32; i++) self = remove(self, uint8(b[i]));
        return self;
    }
}
