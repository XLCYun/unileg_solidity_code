// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeAddress {
    function addressConvert() public pure returns (address, address) {
      uint a = 0x111122223333444455556666777788889999AAAABBBBCCCCDDDDEEEEFFFFCCCC;
      bytes32 b = bytes32(0x111122223333444455556666777788889999AAAABBBBCCCCDDDDEEEEFFFFCCCC);

      return (
        address(uint160(a)), // 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc 
        address(bytes20(b)) // 0x111122223333444455556666777788889999aAaa
      );
    }
}
