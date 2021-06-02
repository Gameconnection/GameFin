// contracts/GameFinToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BEP20 is PausableToken, MintableToken {
    // public variables
    string public name = "Game Connection Token";
    string public symbol = "GCGT";
    uint8 public decimals = 18;

    constructor() public {
        totalSupply_ = 1000000000000 * (10 ** uint256(decimals));
    }

    fallback () public payable {
        revert();
    }
}
