pragma solidity ^0.4.0;

contract PaymentsContract {

  address public owner;
  mapping (address => uint) public ownerBalances;
  mapping (address => uint) public payOffBalances;

  function PaymentsContract() {
    owner = msg.sender;
  }

  function () {
    Print("Huston, we have a contract to write");
  }

  event Sent(address from, address to, uint amount);

  event Print(string out);

  function createReciever() returns (address) {}

  function topUp(uint amount) returns (bool) {}

  function refund(address reciever, uint amount) returns (bool) {}

  function payOff(address from, address to, uint amount) returns (bool) {}

  function withdraw() returns (bool) {}

  function kill() public onlyowner {
    selfdestruct(owner);
  }

}
