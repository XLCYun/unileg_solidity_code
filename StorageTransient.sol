// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.24;

contract Storage {
    modifier nonreentrant() {
        assembly {
            if tload(0) {
                revert(0, 0)
            }
            tstore(0, 1)
        }
        _;
        // Unlocks the guard, making the pattern composable.
        // After the function exits, it can be called again, even in the same transaction.
        assembly {
            tstore(0, 0)
        }
    }
}
