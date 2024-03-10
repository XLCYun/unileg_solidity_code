// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

abstract contract SayHiSayBye {
    function sayHi() external virtual returns (string memory);

    function sayBye() external virtual returns (string memory);
}

abstract contract SayHi is SayHiSayBye {
    function sayHi() external pure override returns (string memory) {
        return "Hi";
    }
}
