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
        assembly {
            tstore(0, 0)
        }
    }
}
