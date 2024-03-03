// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypePaybleAddress {
    function sendCoin() public {
      uint a = 0x111122223333444455556666777788889999AAAABBBBCCCCDDDDEEEEFFFFCCCC;
      address payable addr = payable(address(uint160(a)));
      addr.transfer(1 ether);
    }
}
