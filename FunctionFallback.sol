// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionFullback {
    error NoMatchFunction();

    fallback() external {
        revert NoMatchFunction();
    }
}
