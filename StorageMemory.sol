// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Counter {
    uint number;

    function computeSum(uint[] memory increments, uint len) private pure returns (uint sum) {
        uint i;
        for(i = 0; i < len; i++)
          sum += increments[i];
    }
}
