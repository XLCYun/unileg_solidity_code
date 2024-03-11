// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;


contract Base {
    string[] public seq;

    function getCallSeq() public view returns (string memory) {
        string memory result;
        for (uint256 i = 0; i < seq.length; i++)
            result = string.concat(
                result,
                seq[i],
                i + 1 < seq.length ? "=>" : ""
            );
        return result;
    }

    function clean() public virtual {
        // 做一些 Base 相关的清理工作
        seq.push("Base");
    }
}

contract Base1 is Base {
    function clean() public virtual override {
        // 做一些 Base1 相关的一些清理工作
        seq.push("Base1");
        // 调用父类，进行父类清理工作
        // super 不一定是 Base 类，而是C3线性化后，位于 Base1 前面的类
        super.clean();
    }
}

contract Base2 is Base {
    function clean() public virtual override {
        // 做一些 Base2 相关的一些清理工作
        seq.push("Base2");
        // 调用父类，进行父类清理工作
        // super 不一定是 Base 类，而是C3线性化后，位于 Base1 前面的类
        super.clean();
    }
}

contract C is Base1, Base2 {
    function clean() public override(Base1, Base2) {
        // 做一些清理工作
        seq.push("C");
        // 分别调用父类的 clean 函数
        // super 类是 Base1，还是 Base2？
        super.clean();
    }
}
