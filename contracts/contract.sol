// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract MyContract {
    function transferEther(address payable _recipient, uint256 _amount) public payable {
        require(_amount <= address(this).balance, "Insufficient balance");
        
        _recipient.transfer(_amount);
    }
    
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

