pragma solidity ^0.4.0;

contract LumusMaximaContract {
    address public currentVersion;
    address public owner;

    function LumusMaximaContract(address initAddr){
        currentVersion = initAddr;
        owner = msg.sender;
    }

    function update(address newAddress){
        if(msg.sender != owner) throw;
        currentVersion = newAddress;
    }

    function(){
        if(!currentVersion.delegatecall(msg.data)) throw;
    }
}
