
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract Day3ReviceEther {
    mapping(address => uint256) public deposits;

    //Desposit function - receiver Ether
    function deposit() public payable {
        require(msg.value > 0, "Send some Ether");
        deposits[msg.sender] += msg.value;
    }

    //view contact's total balance
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // Withdraw function - only sender can withdraw their amount
    function withdraw(uint256 _amount) public {
        require(deposits[msg.sender] >= _amount, "Not enough balance");
        deposits[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
}
