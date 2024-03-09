// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract FunctionMultipleModifier {
    int256 public a;

    modifier runTwice() {
        // 在本例子，此处函数体为 function addOne() public runTriple { a++; }
        _;
        // 在本例子，此处函数体为 function addOne() public runTriple { a++; }
        _;
    }

    modifier runTriple() {
        // 在本例中，此处函数体为 function addOne() public { a++; }
        _;
        // 在本例中，此处函数体为 function addOne() public { a++; }
        _;
        // 在本例中，此处函数体为 function addOne() public { a++; }
        _;
    }

    function addOne() public runTwice runTriple {
        a++;
    }
}
