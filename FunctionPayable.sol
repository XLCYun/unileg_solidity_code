// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionPayable {
    function pay() public payable {
        require(msg.value == 1 ether, unicode"只能支付1个以太币");
    }
}
