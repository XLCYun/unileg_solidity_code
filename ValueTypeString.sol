// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeString {
    function concat() public pure returns (string memory) {
        string memory str = "01";
        str = string.concat(str, "02", "03");
        return str;
    }
}
