// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeArraySlice {
  function slice(bytes calldata echo) public pure returns (bytes memory) {
    bytes memory a = hex"01";
    a = bytes.concat(a, echo[:5]);
    return a;
  }
}
