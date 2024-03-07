// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract A {}

contract ValueTypeContract {
    function test() public returns (address) {
      A a = new A();
      address addr = address(a);
      return addr;
    }
}
