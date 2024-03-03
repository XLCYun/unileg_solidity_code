// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeUnchecked {
    function defaultChecked() public pure returns (uint8) {
        return uint8(0) - 1;
    }

    function uncheckedWrap() public pure returns (uint8) {
        unchecked {
            return uint8(0) - 1;
        }
    }
}
