// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Login {
    // Private variables
    // Each bytes32 variable would occupy one slot
    // because bytes32 variable has 256 bits(32*8)
    // which is the size of one slot
    // Slot 0
    bytes32 private username;
    bytes32 private password;// Slot 1

    constructor(bytes32  _username, bytes32  _password) {
        username = _username;
        password = _password;
    }
}


// username = 0x48656c6c6f576f726c6455736572000000000000000000000000000000000000;
// password = 0x48656c6c6f576f726c6450617373776f72640000000000000000000000000000;