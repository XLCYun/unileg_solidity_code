// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

/// @dev 数组实现的集合操作
library SetOp {
    /// @dev 数组实现的集合
    struct Set {
        int[] elements;
    }

    /// @notice 判断集合内是否存在存在某元素
    /// @param self 集合结构体
    /// @param v 要查找的元素
    /// @return bool true 表示存在，false 表示不存在
    function has(Set storage self, int v) internal view returns (bool) {
        for (uint i = 0; i < self.elements.length; i++)
            if (self.elements[i] == v) return true;
        return false;
    }

    /// @notice 插入元素到集合中
    /// @param self 集合结构体
    /// @param v 要插入的元素
    /// @return bool true 表示插入成功，false 表示元素已存在
    function insert(Set storage self, int v) internal returns (bool) {
        if (has(self, v)) return false;
        self.elements.push(v);
        return true;
    }

    /// @notice 从集合中移除元素
    /// @param self 集合结构体
    /// @param v 要移除的元素
    /// @return bool true 表示移除成功，false 表示元素不存在
    function remove(Set storage self, int v) internal returns (bool) {
        for (uint i = 0; i < self.elements.length; i++)
            if (self.elements[i] == v) {
                for (i++; i < self.elements.length; i++)
                    self.elements[i - 1] = self.elements[i];
                self.elements.pop();
                return true;
            }
        return false;
    }

    /// @notice 并集操作
    /// @param self 集合结构体，并集结果仍存回此集合
    /// @param unionSet 将此集合元素并入 self 集合
    function union(Set storage self, Set storage unionSet) internal {
        for (uint i = 0; i < unionSet.elements.length; i++)
            insert(self, unionSet.elements[i]);
    }

    /// @notice 交集操作
    /// @param self 集合结构体，交集结果仍存回此集合
    /// @param diffSet 将此集合元素与 self 取交集，不修改此集合
    function diff(Set storage self, Set storage diffSet) internal {
        for (uint i = 0; i < diffSet.elements.length; i++)
            remove(self, diffSet.elements[i]);
    }

    /// @notice 获取所有元素
    /// @param self 集合结构体，交集结果仍存回此集合
    function getElements(
        Set storage self
    ) internal view returns (int[] storage) {
        return self.elements;
    }
}
