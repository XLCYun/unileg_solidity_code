// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Revert {
    function revert1() public pure {
        // 直接抛出错误，不符带任何数据
        revert();
    }

    function revert2() public pure {
        // 抛出错误，带一个字符串揭示错误原因
        revert("Not owner");
    }

    // 一个自定义错误
    error NotOwned(address from);

    function revert3() public pure {
        // 抛出自定义错误
        revert NotOwned(msg.sender);
    }
}
