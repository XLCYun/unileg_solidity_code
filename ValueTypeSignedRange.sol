// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeSignedRange {
    function defaultChecked() public pure returns (int8) {
        return -type(int8).min;
    }

    function uncheckedWrap() public pure returns (int8) {
        unchecked {
            return -type(int8).min;
        }
    }
}
