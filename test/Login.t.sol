// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import { Login } from "../src/Login.sol";

contract CounterTest is Test {
    Login public loginContract;
    bytes32 private username =  0x48656c6c6f576f726c6455736572000000000000000000000000000000000000;
    bytes32 private password = 0x48656c6c6f576f726c6450617373776f72640000000000000000000000000000;

    function setUp() public {
        loginContract = new Login(username, password);
    }

    function testAccessToPrivateStorage0() public {
        bytes32 bytesUsername = vm.load(address(loginContract), 0);
        string memory stringUsername = vm.toString(bytesUsername);
        emit log_named_string("Getting the username: ", stringUsername);
        assertEq(bytesUsername, "HelloWorldUser");
    }

        function testAccessToPrivateStorage1() public {
        bytes32 bytesPassword = vm.load(address(loginContract), bytes32(uint(1)));
        string memory stringPassword = vm.toString(bytesPassword);
        emit log_named_string("Getting the username: ", stringPassword);
        assertEq(bytesPassword, "HelloWorldPassword");
    }
}
