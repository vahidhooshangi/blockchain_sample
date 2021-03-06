const Shipping = artifacts.require("../contracts/ShippingStatus.sol");
module.exports = function (deployer) {
  deployer.deploy(Shipping);
};