// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Grandpa {}

contract Dad is Grandpa {}

contract Son is Dad {}

contract ValueTypeContract {
    function test() public payable {
        Son s = new Son();
        Grandpa p = s; // 隐式转换为 Grandpa
    }
}
