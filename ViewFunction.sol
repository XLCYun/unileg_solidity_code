// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ViewFunction {
    int private number;
    function getNumber() public view returns (int) {
      return number;
    }
}
