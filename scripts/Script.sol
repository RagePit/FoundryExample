// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Test} from "forge-std/Test.sol";

import {Cheats} from "./Cheats.sol";
import {Contract} from "../src/Contract.sol";

contract Script is Test {
    Cheats script_vm = Cheats(HEVM_ADDRESS);

    function deploy() public {
        emit log_uint(script_vm.getNonce(msg.sender));
        script_vm.broadcast(msg.sender);
        Contract c = new Contract();
        emit log_address(address(c));
    }
}