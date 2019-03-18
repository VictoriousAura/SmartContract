const ApprovalContracts=artifacts.require('../../contracts/ApprovalContracts.sol');

contract('ApprovalContracts',function (accounts){
  it('initiates call', async function(){
    const contract = await ApprovalContracts.deployed();
    const approver = await contract.approver.call();
    assert.equal(approver, 0xC5fdf4076b8F3A5357c5E395ab970B5B54098Fef,"Approvers dont match");
  });

  it('takes a deposit', async function(){
      const contract = await ApprovalContracts.deployed();
      await contract.deposit(accounts[0],{value: 1e+18, from:accounts[1]});
      assert.equal(web3.eth.getBalance(contract.address),1e+18,"Amount didnt match");
  });
});
