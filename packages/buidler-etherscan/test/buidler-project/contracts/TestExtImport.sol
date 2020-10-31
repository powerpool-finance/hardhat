pragma solidity 0.5.15;

import "@openzeppelin/contracts/ownership/Ownable.sol";
import "./TestLibrary.sol";
import "./imported/ImportStub.sol";

contract TestContract1 {

    uint amount;

    string message = "foo";

    constructor(uint _amount) public {
        amount = _amount;
    }
}

contract InnerContract2 is Ownable {

  function foo() public payable {
    msg.sender.transfer(msg.value);
  }
}
