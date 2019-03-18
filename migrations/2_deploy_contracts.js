var ApprovalContracts =artifacts.require("ApprovalContracts");

module.exports=function(deployer){
  deployer.deploy(ApprovalContracts);
};
