// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.1 <0.9.0;

contract Callee {
    function callee(
        string calldata name
    ) external pure returns (string memory) {
        require(
            keccak256(bytes(name)) == keccak256(bytes("Mathew")),
            "Only Mathew can call this"
        );
        return "Hi, Mathew";
    }
}

contract TryCatch {
    function test(string calldata name) public returns (string memory) {
        Callee c = new Callee();
        // try 后面必须跟一个外部调用或者，或者合约创建语句
        try c.callee(name) returns (string memory result) {
            return result;
        } catch Error(string memory reason) {
            // catch Error(string memory) 用于捕获 Error 型错误
            // 直接 revert(reason) 再次抛出该错误
            revert(reason);
        } catch Panic(uint errorCode) {
            // catch Panic 用于捕获 Panic 型错误，errorCode 为 Panic 代码
            revert(unicode"调用 callee 导致 Panic");
        } catch (bytes memory lowLevelData) {
            // catch(bytes memory lowLevelData) 用于捕获所有异常
            // Panic 代码或者 Error 参数保存在 lowLevelData 中
            return string(lowLevelData);
        } catch {
            // 与 catch(bytes memory lowLevelData) 一样用于捕获所有异常
            // 但是并不关心异常附带的数据，因此没有参数
            // 与 catch(bytes memory lowLevelData) 只能二选一
            return "Something went wrong.";
        }
    }
}
