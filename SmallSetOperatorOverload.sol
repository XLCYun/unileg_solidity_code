// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

/// @dev bytes32 实现的小集合，每个元素占1个字节，最多32个元素，元素值 1-255，0 视为空位
type SmallSet is bytes32;

// 将 SetOp 库中的函数附加到 Set 结构体
using SmallSetOp for SmallSet global;

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

    /// @notice 插入元素到集合中
    /// @param self 集合结构体
    /// @param v 要插入的元素
    /// @return bool true 表示插入成功，false 表示元素已存在
    function insert(SmallSet self, uint8 v) internal pure returns (SmallSet) {
        if (has(self, v)) return self;
        bytes32 b = SmallSet.unwrap(self);
        for (uint256 i = 0; i < 32; i++)
            if (b[i] == 0x00)
                return SmallSet.wrap(b | (bytes32(bytes1(v)) >> (8 * i)));
        return self;
    }

    /// @notice 从集合中移除元素
    /// @param self 集合结构体
    /// @param v 要移除的元素
    /// @return bool true 表示移除成功，false 表示元素不存在
    function remove(SmallSet self, uint8 v) internal pure returns (SmallSet) {
        bytes32 b = SmallSet.unwrap(self);
        bytes1 target = bytes1(v);

        for (uint256 i = 0; i < 32; i++)
            if (b[i] == target)
                return SmallSet.wrap(b & (~(bytes32(hex"ff") >> (8 * i))));
        return self;
    }

    /// @notice 并集操作
    /// @param self 集合结构体，并集结果仍存回此集合
    /// @param unionSet 将此集合元素并入 self 集合
    function union(SmallSet self, SmallSet unionSet)
        internal
        pure
        returns (SmallSet)
    {
        bytes32 b = SmallSet.unwrap(unionSet);
        for (uint256 i = 0; i < 32; i++) self = insert(self, uint8(b[i]));
        return self;
    }

    /// @notice 交集操作
    /// @param self 集合结构体，交集结果仍存回此集合
    /// @param diffSet 将此集合元素与 self 取交集，不修改此集合
    function diff(SmallSet self, SmallSet diffSet)
        internal
        pure
        returns (SmallSet)
    {
        bytes32 b = SmallSet.unwrap(diffSet);
        for (uint256 i = 0; i < 32; i++) self = remove(self, uint8(b[i]));
        return self;
    }
}

// 用于重载为 SmallSet 加法操作（操作符+）
// 重载操作符的函数必须是文件层级声明的 pure 自由函数
function unionAdd(SmallSet self, SmallSet unionSet) pure returns (SmallSet) {
    return SmallSetOp.union(self, unionSet);
}

// 用于重载为 SmallSet 减法操作（操作符-）
// 重载操作符的函数必须是文件层级声明的 pure 自由函数
function diffSub(SmallSet self, SmallSet diffSet) pure returns (SmallSet) {
    return SmallSetOp.diff(self, diffSet);
}

// 操作符重载
using {unionAdd as +, diffSub as -} for SmallSet global;
