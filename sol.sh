#!/bin/bash

file=$1".sol"
if test -f $1".sol"; then
    echo "$1".sol" 已存在"
    code $file
    exit 0
fi

touch $file

echo "// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract $1 {
    function test() public {
    }
}
" >> $file

code $file
echo "完成"