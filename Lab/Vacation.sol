// Rutvik Choudhari - 2019130010 - BE Comps

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract Vacation {
    uint amount;

    function setAmount(uint _amount) public {
        amount = _amount;
    }

    function getAmount() public view returns (uint) {
        return amount;
    }

    function spendOnTravel(uint _amount) public {
        require(amount >= _amount, "Not enough amount.");
        amount -= _amount;
    }

    function spendOnFood(uint _amount) public {
        require(amount >= _amount, "Not enough amount.");
        amount -= _amount;
    }

    function spendOnStay(uint _amount) public {
        require(amount >= _amount, "Not enough amount.");
        amount -= _amount;
    }
}
