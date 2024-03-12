// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

// 导入 SetOp 库
import {SmallSetOp, SmallSet} from "./SmallSet.sol";

contract TestSet {
    SmallSet public set1;
    SmallSet public set2;

    function test() public returns (SmallSet, SmallSet) {
        set1 = SmallSetOp.insert(set1, 2);
        set1 = SmallSetOp.insert(set1, 4);
        set1 = SmallSetOp.insert(set1, 6);
        set1 = SmallSetOp.insert(set1, 8);
        // set1: 2, 4, 6, 8

        set2 = SmallSetOp.insert(set2, 1);
        set2 = SmallSetOp.insert(set2, 3);
        set2 = SmallSetOp.insert(set2, 5);
        set2 = SmallSetOp.insert(set2, 7);
        // set2: 1, 3, 5, 7

        set1 = SmallSetOp.remove(set1, 2);
        set2 = SmallSetOp.remove(set2, 5);
        // set1: 4, 6, 8
        // set2: 1, 3, 7

        set1 = SmallSetOp.union(set1, set2);
        // set1: 4, 6, 8, 1, 3, 7
        // set2: 1, 3, 7

        set2 = SmallSetOp.diff(set2, set1);
        // set1: 4, 6, 8, 1, 3, 7
        // set2:

        return (set1, set2);
    }
}
