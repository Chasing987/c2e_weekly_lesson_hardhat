// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.4.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract C2EUsdt is ERC20, Ownable {
    constructor(address recipient, address initialOwner)
        ERC20("C2EUSDT", "CUSDT")
        Ownable(initialOwner)
    {
        _mint(recipient, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() public override pure returns (uint8) {
        return 6;
    }
}