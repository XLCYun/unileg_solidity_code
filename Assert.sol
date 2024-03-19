// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Assert {
    function add(uint a, uint b) public pure returns (uint c) {
        c = a + b;
        assert(c > a && c > b);
    }
}
