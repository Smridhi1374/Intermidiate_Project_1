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
