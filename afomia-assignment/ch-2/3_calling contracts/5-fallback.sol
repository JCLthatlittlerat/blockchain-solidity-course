// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function makeContact(address hero) external {
        // trigger the hero's fallback function
        (bool success, ) = hero.call("hello");

        require(success);
    }
}