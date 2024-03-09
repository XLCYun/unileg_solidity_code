#!/bin/bash

file=$1".sol"

# 存在第二个参数 -c，表示输出 CodeBox 代码
if [ "$2" = "-c" ]; then
  code=$(<$file)
  pre='<Code lang="solidity" edit="https://remix.ethereum.org/XLCYun/unileg_solidity_code/blob/main/'$file'" code={`'
  back='`} />'
  code="$pre
$code
$back"
  printf "$code" | pbcopy
  git add . && git commit -m "\"$1\"" && git push
  exit 0
fi

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
" >>$file

code $file
echo "完成"
