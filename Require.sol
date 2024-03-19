// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Require {
    address owner;

    function Destroy(address payable addr) public {
        require(owner == msg.sender, "Not owner");
        selfdestruct(addr);
    }
}
