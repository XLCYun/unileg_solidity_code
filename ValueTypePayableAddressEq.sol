// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypePayableAddressEq {
  function test() public pure returns (bool) {
    address addr1 = 0x111122223333444455556666777788889999aAaa;
    address payable addr2 = payable(addr1);
    return addr1 == addr2;
  }
}
