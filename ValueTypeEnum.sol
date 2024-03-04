// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ValueTypeEnum {
    enum Fruit {
        Apple, // => 0，默认值
        Banana, // => 1
        Watermelon // => 2
    }

    function test()
        public
        pure
        returns (Fruit, uint, Fruit, uint, Fruit, Fruit, Fruit)
    {
        Fruit defaultFruit;
        Fruit a = Fruit.Watermelon;

        return (
            defaultFruit,       // 0: 默认为 Apple <=> 0
            uint(defaultFruit), // 0: Apple <=> 0
            a,                  // 2: Watermelon <=> 2
            uint(a),            // 2: Watermelon <=> 2
            Fruit(1),           // 1: Banana <=> 1
            type(Fruit).min,    // 0: 最小取值为 0 <=> Apple
            type(Fruit).max     // 2: 最大取值为 2 <=> Watermelon
        );
    }
}
