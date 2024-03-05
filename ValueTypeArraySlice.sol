// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeArraySlice {
  function slice(string calldata echo) public pure returns (bytes memory) {
    bytes calldata arr = bytes(echo);
    return arr[:5];
  }
}
