// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

library Math {
    // 库中的内部函数
    function max(int256[] storage nums) internal view returns (int256) {
        int256 result = type(int256).min;
        for (uint256 i = 0; i < nums.length; i++)
            if (result < nums[i]) result = nums[i];
        return result;
    }
}

contract LibraryInternal {
    int256[] nums;

    function getMaxNum() public returns (int256) {
        nums.push(1);
        nums.push(2);
        nums.push(1);
        // 调用 Math 库 math 内部函数，传入状态变量引用
        return Math.max(nums);
    }
}
