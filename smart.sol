    // SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

contract FunctionsAndErrors {
    uint256 public totalSupply;
    
    constructor(uint256 _initialSupply) {
        require(_initialSupply > 0, "Initial supply must be greater than zero");
        totalSupply = _initialSupply;
    }
    
    function increaseSupply(uint256 _amount) public {
        uint256 newTotalSupply = totalSupply + _amount;
        require(newTotalSupply > totalSupply, "Overflow detected");
        totalSupply = newTotalSupply;
    }
    
    function assertExample(uint256 _value) public pure returns (uint256) {
        uint256 result = _value * 2;
        assert(result > _value);
        return result;
    }
    
    function revertExample(uint256 _value) public pure returns (uint256) {
        require(_value != 0, "Value cannot be zero");
        if (_value > 100) {
            revert("Value exceeds maximum limit");
        }
        return _value * 2;
    }
}