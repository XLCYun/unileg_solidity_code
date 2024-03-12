// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

// 导入 SetOp 库
import {Set} from "./Set2.sol";

contract TestSet {
    function test() public pure returns (Set memory, Set memory) {
        Set memory set1;
        Set memory set2;
        set1.insert(0);
        set1.insert(2);
        set1.insert(4);
        set1.insert(6);
        // set1: 0, 2, 4, 6

        set2.insert(1);
        set2.insert(3);
        set2.insert(5);
        set2.insert(7);
        // set2: 1, 3, 5, 7

        set1.remove(2);
        set2.remove(5);
        // set1: 0, 4, 6
        // set2: 1, 3, 7

        set1.union(set2);
        // set1: 0, 4, 6, 1, 3, 7
        // set2: 1, 3, 7

        set2.diff(set1);
        // set1: 0, 4, 6, 1, 3, 7
        // set2:

        return (set1, set2);
    }
}
