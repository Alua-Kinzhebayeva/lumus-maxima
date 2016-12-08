pragma solidity ^0.4.0;

contract LumusMaximaContract {

  address public owner;
  mapping (address => uint) public balances;

  function LumusMaximaContract() {
    owner = msg.sender;
  }

  event Sent(address from, address to, uint amount);

  event Print(string out);

  function topUp(uint amount) {}

  function refund(address reciever, uint amount) {}

  function payOff(address from, address to, uint amount) {}

  function () {
    Print("Huston, we have a contract to write");
  }
}
