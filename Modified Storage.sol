// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Storage {

    string yourName;

  
    function store(string memory name) public {
        yourName = name;
    }

    function retrieve() public view returns (string memory){
        return yourName;
    }
}

/** The total gas cost of storing the string is 454,157. String Storage: The string data type is dynamic in Solidity, meaning the contract has to allocate memory dynamically and encode each character. This complexity increases gas usage, 
* especially when dealing with larger or variable-length strings. Deployment Costs: Part of the gas is consumed during contract deployment (constructor code), which adds to the overall gas used. However, the major gas consumption comes from interacting with dynamic 
* data types like string. 
* String Storage: 454,157 gas (for a dynamic-length data type).
* Integer Storage: 141,456 gas (for a fixed-size uint256).
* Storing a string is significantly more gas-intensive (over 3 times) compared to storing an integer, primarily due to the dynamic nature of strings.
*/

