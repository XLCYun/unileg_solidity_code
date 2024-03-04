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
            defaultFruit,
            uint(defaultFruit),
            a,
            uint(a),
            Fruit(1),
            type(Fruit).min,
            type(Fruit).max
        );
    }
}
