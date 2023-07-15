require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    localhost: {
      url: "http://127.0.0.1:8545/",
      accounts: [
        "0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80",
      ],
    },
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/l0MPtI-3FzWKBPg_AOFnRg2kATIeO_Sf",
      accounts: [
        "a80952493840b1696597853d8fe1d8de8e5ae18d8706728bf59485e973e51a49",
      ],
    },
  },
};