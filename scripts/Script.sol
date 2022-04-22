// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Test} from "forge-std/Test.sol";

import {Cheats} from "./Cheats.sol";
import {Contract} from "../src/Contract.sol";

contract Script is Test {
    Cheats script_vm = Cheats(HEVM_ADDRESS);

    function deploy() public {
        script_vm.startBroadcast(address(0x57c89A31e0a24f116D0B0Fe2b5b65fE89762E622));
        Contract c = new Contract();
        c.test(address(c));
    }
}