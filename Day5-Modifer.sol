// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract Day2 {
    /*
Function behavior can be changed using function modifiers. Function modifier can be used to automatically check the condition prior to executing the function. These can be created for many different use cases. Function modifier can be executed before or after the function executes its code.

The modifiers can be used when there is a need to verify the condition automatically before executing a particular function.
If the given condition is not satisfied, then the function will not get executed.
    */

    //modifer
    modifier ageMorethan(uint256 age) {
        require(18 >= age, "Check age");
        _;
    }

    modifier equalCheck() {
        require(1 == 1, "Check age");
        _;
    }

    function checkAge() public pure ageMorethan(16) returns (string memory) {
        return "You are 18 or older!";
    }

    function checkAge2() public pure equalCheck returns (string memory) {
        return "This is a modifier function.";
    }
}
