// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

// 导入 SetOp 库
import {SmallSet} from "./SmallSetUsingFor.sol";

contract TestSet {
    SmallSet public set1;
    SmallSet public set2;

    function test() public returns (SmallSet, SmallSet) {
        set1 = set1.insert(2);
        set1 = set1.insert(4);
        set1 = set1.insert(6);
        set1 = set1.insert(8);
        // set1: 2, 4, 6, 8


        set2 = set2.insert(1);
        set2 = set2.insert(3);
        set2 = set2.insert(5);
        set2 = set2.insert(7);
        // set2: 1, 3, 5, 7

        set1 = set1.remove(2);
        set2 = set2.remove(5);
        // set1: 4, 6, 8
        // set2: 1, 3, 7

        set1 = set1.union(set2);
        // set1: 4, 6, 8, 1, 3, 7
        // set2: 1, 3, 7

        set2 = set2.diff(set1);
        // set1: 4, 6, 8, 1, 3, 7
        // set2:

        return (set1, set2);
    }
}
