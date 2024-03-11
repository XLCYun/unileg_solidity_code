// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract O {
    string[] public cleanSeq;

    // 获取记录的调用顺序
    function getCleanSeq() public view returns (string memory) {
        string memory result;
        for (uint256 i = 0; i < cleanSeq.length; i++)
            result = string.concat(result,cleanSeq[i], i + 1 < cleanSeq.length ? "=>" : "");
        return result;
    }

    function clean() public virtual {
        cleanSeq.push("O");
    }
}

contract A is O {
    function clean() public virtual override {
        cleanSeq.push("A");
        super.clean();
    }
}

contract B is O {
    function clean() public virtual override {
        cleanSeq.push("B");
        super.clean();
    }
}

contract C is O {
    function clean() public virtual override {
        cleanSeq.push("C");
        super.clean();
    }
}

contract D is O {
    function clean() public virtual override {
        cleanSeq.push("D");
        super.clean();
    }
}

contract E is O {
    function clean() public virtual override {
        cleanSeq.push("E");
        super.clean();
    }
}

contract K1 is A, B, C {
    function clean() public virtual override(A, B, C) {
        cleanSeq.push("K1");
        super.clean();
    }
}

contract K2 is D, B, E {
    function clean() public virtual override(D, B, E) {
        cleanSeq.push("K2");
        super.clean();
    }
}

contract K3 is D, A {
    function clean() public virtual override(D, A) {
        cleanSeq.push("K3");
        super.clean();
    }
}

contract Z is K3, K2, K1 {
    function clean() public override(K1, K2, K3) {
        cleanSeq.push("Z");
        super.clean();
    }
}
