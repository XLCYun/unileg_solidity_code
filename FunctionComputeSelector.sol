// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Callee {
    function callee(
        uint256 x,
        uint256 y
    ) external pure returns (uint256, uint256) {
        return (0, 1);
    }
}

contract FunctionSelector {
    function getSelector() public pure returns (bytes4, bytes4) {
        return (
            Callee.callee.selector,
            bytes4(keccak256("callee(uint256,uint256)"))
        );
    }
}
