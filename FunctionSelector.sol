// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Callee {
    function callee(uint x, uint y) external pure returns (uint, uint) {
        return (0, 1);
    }
}

contract FunctionSelector {
    function caller() public {
      Callee c = new Callee();
      c.callee(0, 1);
    }
}
