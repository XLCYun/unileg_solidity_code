// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

import {SetOp} from "./Set.sol";

contract TestSet {
    SetOp.Set set1;
    SetOp.Set set2;

    function test() public returns (SetOp.Set memory, SetOp.Set memory) {
        SetOp.insert(set1, 0);
        SetOp.insert(set1, 2);
        SetOp.insert(set1, 4);
        SetOp.insert(set1, 6);

        SetOp.insert(set2, 1);
        SetOp.insert(set2, 3);
        SetOp.insert(set2, 5);
        SetOp.insert(set2, 7);

        SetOp.remove(set1, 2);
        SetOp.remove(set2, 5);

        SetOp.union(set1, set2);

        SetOp.diff(set2, set1);

        return (set1, set2);
    }
}
