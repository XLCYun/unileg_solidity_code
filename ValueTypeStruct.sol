// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ComplexTypeStruct {
    struct People {
        string name;
        uint8 age;
        People[] sons;
    }

    People father;

    function addSon(string calldata name, uint8 age) public {
        People memory son;
        son.name = name;
        son.age = age;
        father.sons.push(son);
    }
}
