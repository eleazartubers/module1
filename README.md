# MetacraftersFunctionsAndErrors
This assessment demonstrates a smart contract that implements the require(), assert(), and revert() statements.

# Description
Solidity has numerous error-handling features. Runtime or compile-time errors are also possible. Runtime mistakes are more harder to detect and mostly arise during contract execution, whereas syntax problems are checked during compile time when Solidity is turned to byte code.

# Getting Started
To run this code go to https://remix.ethereum.org/. Create a new file (example FunctionsandErrors.sol) and paste the code below
// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

contract FunctionsAndErrors {
   
   function requireNum(uint256 _num) public pure returns(uint256){

    uint256 minValue = 1;
    require(_num > minValue, "Number must be greater than 1");
    return _num;
   }

   function assertNum(uint256 _num) public pure returns(uint256) {

    uint256 valueIncrease = 5;
    uint256 result = _num + valueIncrease;
    assert(result > _num);
    return result;
   }

   function revertError() public pure {
    string memory errorMessage = "This transaction has been reverted.";
    revert(errorMessage);

   }

}


# Author
Lusaya, Maria Carmela J.
Email: 8210131@ntc.edu.ph
