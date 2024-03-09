// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionModifiyer {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, unicode"调用者非合约拥有者");
        _;
    }

    function fn1() public onlyOwner {}

    function fn2() public onlyOwner {}

    function fn3() public onlyOwner {}
    // ...
}
