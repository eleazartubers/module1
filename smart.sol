// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SmartContractSavings {
    uint256 public totalSavings;

    constructor(uint256 _initialSavings) {
        require(_initialSavings > 0, "Intial Savings Balance must be greater than 0.");
        totalSavings = _initialSavings;
    }

    function increaseSavings(uint256 _amount) public {
        uint256 newTotalSavings = totalSavings + _amount;
        require(newTotalSavings > totalSavings, "Overflowed!");
        totalSavings = newTotalSavings;
    }

    function assertInterest(uint256 _val) external pure returns (uint256) {
        uint256 balance = _val * 2;
        assert(balance > _val);
        return balance;
    }

    function revertInterest(uint256 _val) public pure returns (uint256) {
        require(_val != 0, "Initial Deposit must not be 0.");
        if (_val > 5000) {
            revert("The maximum amount for the account exceeds the limit");
        }
        return _val * 2;
    }
}
