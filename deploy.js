async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const BatteryChecker = await ethers.getContractFactory("BatteryChecker");
  const batteryChecker = await BatteryChecker.deploy(50);

  console.log("BatteryChecker deployed to:", batteryChecker.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
