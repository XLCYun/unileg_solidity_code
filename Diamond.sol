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
        // 直接使用父类的名称来调用，好像没有什么问题？
        Base.clean();
    }
}

contract Base2 is Base {
    function clean() public virtual override {
        // 做一些 Base2 相关的一些清理工作
        seq.push("Base2");
        // 调用父类，进行父类清理工作
        // 直接使用父类的名称来调用，好像没有什么问题？
        Base.clean();
    }
}

contract C is Base1, Base2 {
    function clean() public override(Base1, Base2) {
        // 做一些清理工作
        seq.push("C");
        // 分别调用父类的 clean 函数
        // 岂不是会导致 Base.clean() 被调用了两次？
        Base2.clean();
        Base1.clean();
    }
}
