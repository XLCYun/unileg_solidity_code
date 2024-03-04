// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract ValueTypeAddressLiteral {
    function test() public pure {
      address addr = 0xfB6916095ca1df60bB79Ce92cE3Ea74c37c5d359; // 可以，符合 EIP-55 地址校验
      address notAddr = 0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359; // 不可以，不符合 EIP-55 地址校验
    }
}
