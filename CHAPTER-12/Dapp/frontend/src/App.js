import logo from "./logo.svg";
import "./App.css";
import { BigNumber, ethers } from "ethers";
import { useState } from "react";

function App() {
  const TokenABI = [
    { inputs: [], stateMutability: "nonpayable", type: "constructor" },
    {
      anonymous: false,
      inputs: [
        {
          indexed: true,
          internalType: "address",
          name: "owner",
          type: "address",
        },
        {
          indexed: true,
          internalType: "address",
          name: "spender",
          type: "address",
        },
        {
          indexed: false,
          internalType: "uint256",
          name: "value",
          type: "uint256",
        },
      ],
      name: "Approval",
      type: "event",
    },
    {
      anonymous: false,
      inputs: [
        {
          indexed: true,
          internalType: "address",
          name: "from",
          type: "address",
        },
        { indexed: true, internalType: "address", name: "to", type: "address" },
        {
          indexed: false,
          internalType: "uint256",
          name: "value",
          type: "uint256",
        },
      ],
      name: "Transfer",
      type: "event",
    },
    {
      inputs: [
        { internalType: "address", name: "owner", type: "address" },
        { internalType: "address", name: "spender", type: "address" },
      ],
      name: "allowance",
      outputs: [{ internalType: "uint256", name: "", type: "uint256" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [
        { internalType: "address", name: "spender", type: "address" },
        { internalType: "uint256", name: "amount", type: "uint256" },
      ],
      name: "approve",
      outputs: [{ internalType: "bool", name: "", type: "bool" }],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [{ internalType: "address", name: "account", type: "address" }],
      name: "balanceOf",
      outputs: [{ internalType: "uint256", name: "", type: "uint256" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [],
      name: "decimals",
      outputs: [{ internalType: "uint8", name: "", type: "uint8" }],
      stateMutability: "pure",
      type: "function",
    },
    {
      inputs: [
        { internalType: "address", name: "spender", type: "address" },
        { internalType: "uint256", name: "subtractedValue", type: "uint256" },
      ],
      name: "decreaseAllowance",
      outputs: [{ internalType: "bool", name: "", type: "bool" }],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [
        { internalType: "address", name: "spender", type: "address" },
        { internalType: "uint256", name: "addedValue", type: "uint256" },
      ],
      name: "increaseAllowance",
      outputs: [{ internalType: "bool", name: "", type: "bool" }],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [],
      name: "name",
      outputs: [{ internalType: "string", name: "", type: "string" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [],
      name: "symbol",
      outputs: [{ internalType: "string", name: "", type: "string" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [],
      name: "totalSupply",
      outputs: [{ internalType: "uint256", name: "", type: "uint256" }],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [
        { internalType: "address", name: "to", type: "address" },
        { internalType: "uint256", name: "amount", type: "uint256" },
      ],
      name: "transfer",
      outputs: [{ internalType: "bool", name: "", type: "bool" }],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [
        { internalType: "address", name: "from", type: "address" },
        { internalType: "address", name: "to", type: "address" },
        { internalType: "uint256", name: "amount", type: "uint256" },
      ],
      name: "transferFrom",
      outputs: [{ internalType: "bool", name: "", type: "bool" }],
      stateMutability: "nonpayable",
      type: "function",
    },
  ];

  // const TokenAddress = "0x67b6e19B1E116595B59cEA490A829a58A943fCfD";
  const TokenAddress = "0x2f4B4bb1aC0Ff191D332488A16a0fb7bC4c47868";
  const [userAccount, setUserAccount] = useState("");
  const [chainID, setchainID] = useState();
  const [chainName, setChainName] = useState("");
  const [name, setName] = useState("");
  const [receiver, setReciever] = useState();
  const [amount, setAmount] = useState();
  const [tx, setTx] = useState("");

  const handleSubmit = (event) => {
    event.preventDefault();
    setReciever(event.target.value);
    setAmount(event.target.value);
    makeTransfer(receiver, amount);
  };

  const connectWallet = async () => {
    const { ethereum } = window;
    if (ethereum) {
      // const provider = new ethers.BrowserProvider(ethereum);
      const provider = new ethers.providers.Web3Provider(ethereum);
      const accounts = await provider.send("eth_requestAccounts", []);
      const chainid = (await provider.getNetwork()).chainId.toString();
      const chainName = (await provider.getNetwork()).name;
      setchainID(chainid);
      setChainName(chainName);
      console.log(accounts[0]);
      console.log(chainid);
      setUserAccount(accounts[0]);
    } else {
      console.log("please install metamask");
    }
  };

  async function showTokenName() {
    const { ethereum } = window;
    const provider = new ethers.providers.Web3Provider(ethereum);
    const signer = provider.getSigner();
    console.log("signer is:", signer);
    console.log(provider);
    console.log(TokenAddress);
    console.log(TokenABI);
    const BHTContractInstance = new ethers.Contract(
      TokenAddress,
      TokenABI,
      signer
    );
    console.log(BHTContractInstance);
    console.log("-----------------");
    const tokenName = await BHTContractInstance.name();
    console.log(tokenName);
    console.log("-----------------");
    setName(tokenName);
  }

  const makeTransfer = async (tokenReceiver, tokenAmount) => {
    const { ethereum } = window;
    const provider = new ethers.providers.Web3Provider(ethereum);
    const signer = provider.getSigner();
    const BHTContractInstance = new ethers.Contract(
      TokenAddress,
      TokenABI,
      signer
    );
    // const transferAmount = ethers.utils.formatEther(1000);
    // console.log(transferAmount);
    const receipt = await BHTContractInstance.transfer(
      tokenReceiver,
      tokenAmount
    );
    console.log("Transaction hash:", receipt.hash);
    setTx(receipt.hash);
  };

  return (
    <div className="App">
      <div className="container-fluid">
        <div className="row">
          <div className="col-sm mt-3">
            <div className="card border-primary mb-3">
              <div className="card-header">
                {" "}
                <h4>Click on connect wallet button</h4>
              </div>{" "}
              <div className="card-body">
                <button className="btn btn-primary" onClick={connectWallet}>
                  Connect Wallet
                </button>
                <p className="mt-3">
                  <span className="text-primary"> connected wallet:</span>{" "}
                  {userAccount}
                </p>
                <p>
                  <span className="text-primary">Chain id is:</span> {chainID}
                </p>
                <p>
                  <span className="text-primary">Chain name:</span> {chainName}
                </p>
              </div>
              <hr />
              <div className="card-body">
                <button className="btn btn-primary" onClick={showTokenName}>
                  Show Token Name
                </button>
                <p>{name}</p>
              </div>
            </div>
          </div>
          {/* <div className="col-sm"></div> */}
          <div className="col-sm mt-3">
            {" "}
            <div className="card border-primary mb-3">
              <div className="card-header">
                {" "}
                <h4>Transfer Tokens</h4>
              </div>{" "}
              <div className="card-body">
                <form onSubmit={handleSubmit}>
                  <div className="form-group">
                    <label>
                      To:
                      <input
                        className="form-control"
                        placeholder="Receiver Account"
                        type={"text"}
                        value={receiver}
                        onChange={(e) => setReciever(e.target.value)}
                      />
                    </label>
                  </div>
                  <br />
                  <div class="form form-group">
                    <label>
                      Amount:
                      <input
                        className="form-control"
                        placeholder="Token Amount"
                        type={"text"}
                        value={amount}
                        onChange={(e) => setAmount(e.target.value)}
                      />
                    </label>
                  </div>
                  <br />
                  <br />
                  <div class="form form-group">
                    <input
                      className="btn btn-primary"
                      type={"submit"}
                      value="Send"
                    />
                    <hr />
                    <p>
                      Transaction hash:{" "}
                      <a
                        target="_blank"
                        href={`https://goerli.etherscan.io/tx/${tx}`}
                      >
                        {tx}
                      </a>
                    </p>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;
