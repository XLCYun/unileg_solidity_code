// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueRefType {
    struct People {
        uint age;
    }

    function add1Year(uint age, People memory p) private pure {
        age += 1;   // 修改 age
        p.age += 1; // 修改 p.age
    }

    function test() public pure returns (uint, uint) {
      uint age = 0;
      People memory p;
      p.age = 0;
      // uint 为值类型，add1Year 得到的是 age 的一份拷贝
      // struct People 为引用类型，add1Year 得到的是 p 的引用
      add1Year(age, p);
      return (age, p.age); // = （0, 1)，add1Year 通过 p 的引用，修改了 p.age
    }
}
