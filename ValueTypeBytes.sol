// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeBytes {
    function test() public pure returns (bytes memory) {
        bytes memory byteArray = hex"01";
        byteArray = bytes.concat(byteArray, hex"02", "03");
        return byteArray;
    }
}
