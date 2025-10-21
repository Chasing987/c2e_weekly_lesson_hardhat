const hre = require("hardhat");

async function deploy() {
  const _contract = await hre.ethers.getContractFactory("C2EUsdt");
  const _deploy = await _contract.deploy(
    "0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266",
    "0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266"
  );
  await _deploy.waitForDeployment();
  console.log(await _deploy.getAddress());
}
deploy();
