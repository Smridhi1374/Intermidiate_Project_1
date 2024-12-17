Intermidiate_Project_1
This is a Intermidiate Solidity Smart Contract to demonstrate the basics of Solidity.

Description
The contract contains 2 state variables including the Sender , Balances.


It also contains 3 functions namely increasebalance and decreasebalance and add10ifBalance500 which work as their name would suggest. incerasebalance increases the balance by 1.

decreasebalance  function decreases the balance by 1.

add10ifBalance500() does if balance is 500 then it add value 10 to it.

Getting Started
Executing program
To run this program, you can use Remix, an online Solidity IDE. Go to https://remix.ethereum.org/.

Once you are on the website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Test.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorHandling {

    address public Sender;
    uint public Balance = 500;

    constructor(){
        Sender = msg.sender;
    }

    function increaseBalance() payable  public{
        require(msg.sender == Sender ,"Only contract owner can execute!");
        Balance++;
        
    }

    function decreaseBalance() payable public {
        if(msg.sender != Sender){
            revert("Only contract owner can execute");
        }
        Balance--;
    }

    function add10ifBalance500() public payable  {
        

        assert(Balance == 500);
        Balance =Balance+=10;
    }
}

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Test.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the increasebalance or decreasebalance and add10ifBalance500 function.

Help
Make sure to have the compiler option set to 0.8.18 to avoid version depenedency errors.

pragma solidity ^0.8.13

Authors
[Smridhi Vohra]


License
This project is licensed under the MIT License - see the LICENSE.md file for details
