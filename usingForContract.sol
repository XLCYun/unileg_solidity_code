// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

function sayHi(string memory self) pure returns (string memory) {
    return string.concat("Hi, I am a string, my value is: ", self);
}

contract C {
    using {sayHi} for string;

    function test() public pure returns (string memory) {
        string memory str = "USING FOR STRING";
        return str.sayHi();
    }
}