// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract O {
    string[] public seq;

    constructor() {
        seq.push("O");
    }

    function getCallSeq() public view returns (string memory) {
        string memory result;
        for (uint256 i = 0; i < seq.length; i++)
            result = string.concat(result, seq[i], i + 1 < seq.length ? "=>" : "");
        return result;
    }
}

contract A is O {
    constructor() {
        seq.push("A");
    }
}

contract B is O {
    constructor() {
        seq.push("B");
    }
}

contract C is O {
    constructor() {
        seq.push("C");
    }
}

contract D is O {
    constructor() {
        seq.push("D");
    }
}

contract E is O {
    constructor() {
        seq.push("E");
    }
}

contract K1 is A, B, C {
    constructor() {
        seq.push("K1");
    }
}

contract K2 is D, B, E {
    constructor() {
        seq.push("K2");
    }
}

contract K3 is D, A {
    constructor() {
        seq.push("K3");
    }
}

contract Z is K1, K2, K3 {
    constructor() {
        seq.push("Z");
    }
}
