pragma solidity >=0.4.18;

contract ApprovalContracts{

  address public sender;
  address payable public receiver;
  address public constant approver = 0xC5fdf4076b8F3A5357c5E395ab970B5B54098Fef;
  // approver takes a value from tests

  function deposit(address payable _receiver) external payable{
    // address here to tell to whom the money is sent to
    //payable means this function would use ether
    //external allows this function to be called outside of the contract and not just iternallly

    //when this function is called there is an object called msg that comes with some data and the sender address
    // we use require to check if the requirememnt is met with the msg

    require (msg.value>0);
    //to tell we have to deposit some amount of ether to execute this function be it the ether value is in decimals
    // if value<0, it throws an error and function is stopped
    // require acts as 'if'
    sender =msg.sender;
    receiver=_receiver;

  }

  function viewApprover() external pure returns (address)
  {
    //pure if function is dealing with constants that dont change and it doesnt involve any amount of gas, it becomes a much lighter weight call
    return approver;
  }

  function approve() external{
    // to send money to the
    require(msg.sender == approver);
    receiver.transfer(address(this).balance);
    // this is the sender address here
    // transfer throws an error if it fails. we can also use send methed which returns true/false
  }
}
