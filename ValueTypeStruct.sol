// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ComplexTypeStruct {
    struct People {
        string name;
        uint8 age;
        People[] sons;
    }

    People father;

    function addSon() public {
        People memory son;
        father.sons.push(son);
    }
}
