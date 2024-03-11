// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

library Math {
    // 库中的内部函数
    function max() internal view returns (address) {
        // 返回 this 的地址，在本例中，由于 max 是内部函数
        // 因此 this 即是合约实例，即 this 地址等于合约的部署地址
        return address(this);
    }
}

contract LibraryInternal {
    function getMaxThisAddress() public view returns (bool) {
        return address(this) == Math.max();
    }
}
