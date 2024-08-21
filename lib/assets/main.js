import { WagmiCore, Chains, Web3modal } from "https://cdn.jsdelivr.net/npm/cdn-wagmi@3.0.0/dist/cdn-wagmi.js"


const { reconnect, getAccount, getChainId, getToken, signMessage, writeContract } = WagmiCore

const projectId = 'f642e3f39ba3e375f8f714f18354faa4'

const metadata = {
  name: 'Web3Modal',
  description: 'Web3Modal Example',
  url: 'https://web3modal.com', // url must match your domain & subdomain
  icons: ['https://avatars.githubusercontent.com/u/37784886']
}

const config = Web3modal.defaultWagmiConfig({
  chains: [Chains.mainnet, Chains.sepolia],
  projectId,
  metadata,
})
reconnect(config)

const modal = Web3modal.createWeb3Modal({
  wagmiConfig: config,
  projectId,
  enableAnalytics: true, // Optional - defaults to your Cloud configuration
  enableOnramp: true // Optional - false as default
})

// Expose functions to the global `window` object
window.openModal = function () {
  return modal.open()
}

window.closeModal = function () {
  return modal.close()
}

window.getAccount = function () {
  const account = getAccount(config);
  return account;
}

window.getChainId = function () {
  const chainId = getChainId(config);
  return chainId;
}

window.getToken = async function (address, chainId) {
  if (!address) {
    console.error("No token address provided");
    return null;
  }
  try {
    const token = await getToken(config, {
      address: address,
      chainId: chainId,
    });
    return token;
  } catch (error) {
    console.error("Error fetching token info:", error);
    return null;
  }
}

window.signMessage = async function (message, accountAddress) {
  if (!message) {
    console.error("No message provided");
    return null;
  }
  if (!accountAddress || !/^0x[a-fA-F0-9]{40}$/.test(accountAddress)) {
    console.error("Invalid account address provided");
    return null;
  }
  try {
    const signedMessage = await signMessage(config, {
      account: accountAddress,
      message: message,
    });

    return signedMessage;
  } catch (error) {
    console.error("Error message sign:", error);
    return null;
  }
}

window.writeContract = async function (contractAddress, contractABI, functionName, args, gas, chainId) {
  try {
    const result = await writeContract(config, {
      abi: JSON.parse(contractABI),
      address: contractAddress,
      functionName: functionName,
      args: args,
      gas: gas,
      chainId: chainId,
    })

    return result;
  } catch (error) {
    console.error("Error writeContract:", error);
    return null;
  }
}

class JSChain {
  static chainFromString(chainString) {
    switch (chainString) {
      case 'mainnet': return Chains.mainnet;
      case 'sepolia': return Chains.sepolia;
    }
  }
}

class JSWeb3Modal {
  static _modal;
  static _wagmiConfig;

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
    this._wagmiConfig = Web3modal.defaultWagmiConfig({
      chains: jsChains,
      projectId: projectId,
      metadata: metadata,
    })

    this._modal = Web3modal.createWeb3Modal({
      wagmiConfig: this._wagmiConfig,
      projectId: projectId,
      enableAnalytics: enableAnalytics, // Optional - defaults to your Cloud configuration
      enableOnramp: enableOnRamp, // Optional - false as default
    })
  }

  open() {
    return this._modal.open()
  }

  close() {
    return this._modal.close()
  }
}

class JSWagmiCore {
}

window.web3modal = new JSWeb3Modal()
window.wagmiCore = new JSWagmiCore()

document.dispatchEvent(new Event('wagmi_flutter_web_ready'))