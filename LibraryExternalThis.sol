// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

library Math {
    // 库中的外部函数，返回库外部函数中的 this
    function libAddress() external view returns (address) {
        return address(this);
    }
}

contract LibraryExternal {
    function sameThis() public view returns (bool) {
        return address(this) == Math.libAddress();
    }
}
