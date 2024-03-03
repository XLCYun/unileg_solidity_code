// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypePaybleAddress {
    function sendCoin() public {
        address payable addr = payable(
            0x111122223333444455556666777788889999aAaa
        );
        addr.transfer(1 ether);
    }
}
