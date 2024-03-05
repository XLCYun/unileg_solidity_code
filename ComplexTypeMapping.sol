// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract ComplexTypeMapping {
    mapping(string => int) scores;
    string[] names;

    function addScore(string calldata name, int score) public {
      scores[name] = score;
      names.push(name);
    }

    function getScoresTable() public view returns (string memory) {
      string memory res = "";
      for(uint i = 0; i < names.length; i++) {
        res = string.concat(res, names[i], string(abi.encode(scores[names[i]])), "\n");
      }
      return res;
    }
}
