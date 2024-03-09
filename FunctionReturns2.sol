// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionReturns {
    function getPosition() public pure returns (int x, int y) {
        x = 1;
        y = 2;
    }

    function getX() public pure returns (int x) {
        (x, ) = getPosition();
    }
}
