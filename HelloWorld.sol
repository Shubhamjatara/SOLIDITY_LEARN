// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

/*| Feature                            | `view` function                         | `pure` function                                             |
| ---------------------------------- | --------------------------------------- | ----------------------------------------------------------- |
| **State Variables Read**           | ✅ Allowed                               | ❌ Not Allowed                                               |
| **State Variables Write**          | ❌ Not Allowed                           | ❌ Not Allowed                                               |
| **Gas Cost (external call)**       | ❌ (No gas if only reading data)         | ❌                                                           |
| **What it does**                   | Reads **data from the blockchain**      | Performs **calculations only**, no blockchain access        |
*/

contract HelloWorld{

    function sayHello() public pure returns (string memory){
        
        return "Hello World";
    }
}
