// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public TokenName = "Truely Amazing Coin";
    string public TokenAbbrev = "TAC";
    uint public TotalSupply;
    // mapping variable here
    mapping(address => uint) public balances;
    // mint function
    function mint(address to, uint value) public {
        TotalSupply += value;
        balances[to] += value;
    }
    // burn function
    function burn(address from, uint value) public returns (bool) {
        bool balbool = balances[from] >= value ? true : false;
        if (balbool) {
            TotalSupply -= value;
            balances[from] -= value;
            return balbool;
        }
        else return balbool;
    }

}
