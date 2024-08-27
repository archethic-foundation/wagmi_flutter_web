import { WagmiCore, Chains, Web3modal } from "https://cdn.jsdelivr.net/npm/cdn-wagmi@3.0.0/dist/cdn-wagmi.js"


const { getAccount, getChainId, getChains, getToken, signMessage, getBalance, readContract, readContracts, writeContract, getBlockNumber, getGasPrice, getTransactionCount, estimateGas, getTransactionReceipt, sendTransaction, watchChainId } = WagmiCore

class JSChain {
  static chainFromString(chainString) {
    switch (chainString) {
      case 'mainnet': return Chains.mainnet;
      case 'sepolia': return Chains.sepolia;
      case 'polygonAmoy': return Chains.polygonAmoy;
      case 'polygon': return Chains.polygon;
    }
  }
}

var _wagmiConfig = undefined;
function config() {
  if (_wagmiConfig === undefined) {
    throw new Error('Wagmi not initialized. Call `Web3Modal.init` first.');
  }
  return _wagmiConfig;
}

class JSWeb3Modal {
  _modalInstance;
  _modal() {
    if (this._modalInstance === undefined) {
      throw new Error('Wagmi not initialized. Call `Web3Modal.init` first.');
    }
    return this._modalInstance;
  }

  init(
    projectId,
    chains,
    enableAnalytics,
    enableOnRamp,
    metadata,
  ) {
    console.log(`chains : ${chains}`)
    const jsChains = chains.map((chainString) => JSChain.chainFromString(chainString))
    console.log(`jschains : ${jsChains.map((jsChain) => jsChain.name)}`)
    _wagmiConfig = Web3modal.defaultWagmiConfig({
      chains: jsChains,
      projectId: projectId,
      metadata: metadata,
    })

    this._modalInstance = Web3modal.createWeb3Modal({
      wagmiConfig: _wagmiConfig,
      projectId: projectId,
      enableAnalytics: enableAnalytics, // Optional - defaults to your Cloud configuration
      enableOnramp: enableOnRamp, // Optional - false as default
    })
  }

  open() {
    return this._modal().open()
  }

  close() {
    return this._modal().close()
  }
}



class JSWagmiCore {
  getAccount = function () {
    const account = getAccount(config());
    return account;
  }

  getChainId = function () {
    const chainId = getChainId(config());
    return chainId;
  }

  getChains = function () {
    const chains = getChains(config());
    return chains;
  }

  getBlockNumber = async function (getBlockNumberParameters) {
    try {
      return await getBlockNumber(config(), getBlockNumberParameters);
    } catch (error) {
      console.error("Error fetching block number:", error);
      throw error;
    }
  }

  getGasPrice = async function (getGasPriceParameters) {
    try {
      return await getGasPrice(config(), getGasPriceParameters);
    } catch (error) {
      console.error("Error fetching gas price:", error);
      throw error;
    }
  }

  getBalance = async function (getBalanceParameters) {
    if (!getBalanceParameters.address || !/^0x[a-fA-F0-9]{40}$/.test(getBalanceParameters.address)) {
      console.error("Invalid address provided");
      throw error;
    }

    try {
      return await getBalance(config(), getBalanceParameters);
    } catch (error) {
      console.error("Error fetching balance:", error);
      throw error;
    }
  }

  getTransactionCount = async function (getTransactionCountParameters) {
    if (!getTransactionCountParameters.address || !/^0x[a-fA-F0-9]{40}$/.test(getTransactionCountParameters.address)) {
      console.error("Invalid address provided");
      throw error;
    }

    try {
      return await getTransactionCount(config(), getTransactionCountParameters);
    } catch (error) {
      console.error("Error fetching transaction count:", error);
      throw error;
    }
  }

  getToken = async function (getTokenParameters) {
    try {
      return await getToken(config(), getTokenParameters);
    } catch (error) {
      console.error("Error fetching token info:", error);
      throw error;
    }
  }


  signMessage = async function (signMessageParameters) {
    if (!signMessageParameters.message) {
      console.error("No message provided");
      return null;
    }
    if (!signMessageParameters.account || !/^0x[a-fA-F0-9]{40}$/.test(signMessageParameters.account)) {
      console.error("Invalid account address provided");
      return null;
    }
    try {
      return await signMessage(config(), signMessageParameters);
    } catch (error) {
      console.error("Error signMessage:", error);
      throw error;
    }
  }

  readContract = async function (readContractParameters) {
    try {
      return await readContract(config(), readContractParameters);
    } catch (error) {
      console.error("Error readContract:", error);
      throw error;
    }
  }

  readContracts = async function (readContractsParameters) {
    try {
      return await readContracts(config(), readContractsParameters);
    } catch (error) {
      console.error("Error readContracts:", error);
      throw error;
    }
  }

  sendTransaction = async function (sendTransactionParameters) {
    try {
      var response = await sendTransaction(config(), sendTransactionParameters);
      console.log("sendTransaction response:", response);
      return response;
    } catch (error) {
      console.error("Error sendTransaction:", error);
      throw error;
    }
  }

  getTransactionReceipt = async function (getTransactionReceiptParameters) {
    try {
      return await getTransactionReceipt(config(), getTransactionReceiptParameters);
    } catch (error) {
      console.error("Error getTransactionReceipt:", error);
      throw error;
    }
  }

  watchChainId = async function (watchChainIdParameters) {
    try {
      return await watchChainId(config(), watchChainIdParameters)
    } catch (error) {
      console.error("Error watchChainId:", error);
      return null;
    }
  }

  writeContract = async function (writeContractParameters) {
    try {
      return await writeContract(config(), writeContractParameters)
    } catch (error) {
      console.error("Error writeContract:", error);
      return null;
    }
  }

  estimateGas = async function (estimateGasParameters) {
    try {
      return await estimateGas(config(), estimateGasParameters);
    } catch (error) {
      console.error("Error estimateGas:", error);
      throw error;
    }
  }
}

window.web3modal = new JSWeb3Modal()
window.wagmiCore = new JSWagmiCore()

document.dispatchEvent(new Event('wagmi_flutter_web_ready'))