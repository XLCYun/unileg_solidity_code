// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract TimeUnit {
    function timeUnit() public pure returns (uint, uint, uint, uint, uint) {
        // 返回 1, 60, 60x60=3600, 60x60x24=86400, 60x60x24x7=604800
        return (1 seconds, 1 minutes, 1 hours, 1 days, 1 weeks);
    }
}
