// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract TimeUnit {
    function timeUnit() public pure returns (uint, uint, uint, uint, uint) {
        return (1 seconds, 1 minutes, 1 hours, 1 days, 1 weeks);
    }
}
