// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Son {
    uint public age;

    function getAge() external view returns (uint) {
        return age; // 内部访问，直接访问状态变量 age
    }
}

contract Parent {
    function getSonAge() external returns (uint) {
        Son s = new Son();
        return s.age(); // 外部访问 age，需要调用同名 getter 函数
    }
}
