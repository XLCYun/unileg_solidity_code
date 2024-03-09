// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract PureFunction {
    function add(int a, int b) public pure returns (int) {
        return a + b;
    }
}
