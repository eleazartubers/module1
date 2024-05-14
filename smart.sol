// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SmartContract {
    uint256 public num;

    function setNum(uint256 _newNum) external {
        require(_newNum >= 200 && _newNum <= 1000, "You can only enter up to 200 but cannot be above 1000");
        num = _newNum;
    }

    function assertNum(uint256 _val) external pure returns (uint256) {
        assert(_val >= 200 && _val <=1000);
        return _val;
    }

    function revertVal(uint256 _val) external pure returns (uint256) {
        if (_val >= 100 && _val <=1000) {
            revert("Value must between 200 and 1000");
        }

        return _val;
    }
}
