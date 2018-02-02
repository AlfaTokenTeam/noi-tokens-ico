pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract NOITokens is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function NOITokens(address _owner)  UpgradeableToken(_owner) {
    name = "NOITokens";
    symbol = "NOI";
    totalSupply = 900000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}