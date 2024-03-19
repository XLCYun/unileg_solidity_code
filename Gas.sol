// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Gas {
    function getGasPrice() public view returns (uint) {
        return tx.gasprice;
    }

    function getGasLeft() public view returns (uint) {
        return gasleft();
    }
}
