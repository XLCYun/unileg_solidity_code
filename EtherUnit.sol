// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract EtherUnit {
    function etherUint() public pure returns (uint, uint, uint) {
      // 将返回 1, 10^9, 10^18
      return (1 wei, 1 gwei, 1 ether);
    }
}

