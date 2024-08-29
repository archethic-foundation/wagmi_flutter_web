import {
    EstimateGasParameters,
    GetBalanceParameters,
    GetBlockNumberParameters,
    GetGasPriceParameters,
    GetTokenParameters,
    GetTransactionCountParameters,
    GetTransactionReceiptParameters,
    GetBlockParameters,
    GetBlockTransactionCountParameters,
    GetTransactionConfirmationsParameters,
    GetTransactionParameters,
    ReadContractParameters,
    ReadContractsParameters,
    SignMessageParameters,
    WatchChainIdParameters,
    WriteContractParameters,
    SendTransactionParameters,
    CallParameters,
    estimateGas,
    getAccount,
    getBalance,
    getBlockNumber,
    getChainId,
    getChains,
    getGasPrice,
    getToken,
    sendTransaction,
    getTransaction,
    getTransactionConfirmations,
    getBlock,
    getBlockTransactionCount,
    getTransactionCount,
    getTransactionReceipt,
    readContract,
    readContracts,
    signMessage,
    watchChainId,
    writeContract,
    call,
} from "@wagmi/core"
import { InvalidAddressError } from "viem"
import { JSWagmiContext } from "./context"

export class JSWagmiCore {
    getAccount = function () {
        const account = getAccount(JSWagmiContext.instance.config)
        return account
    }

    getChainId = function () {
        const chainId = getChainId(JSWagmiContext.instance.config)
        return chainId
    }

    getChains = function () {
        const chains = getChains(JSWagmiContext.instance.config)
        return chains
    }

    getBlockNumber = async function (getBlockNumberParameters: GetBlockNumberParameters) {
        try {
            return await getBlockNumber(JSWagmiContext.instance.config, getBlockNumberParameters)
        } catch (error) {
            console.error("Error fetching block number:", error)
            throw error
        }
    }

    getGasPrice = async function (getGasPriceParameters: GetGasPriceParameters) {
        try {
            return await getGasPrice(JSWagmiContext.instance.config, getGasPriceParameters)
        } catch (error) {
            console.error("Error fetching gas price:", error)
            throw error
        }
    }

    getBalance = async function (getBalanceParameters: GetBalanceParameters) {
        if (!getBalanceParameters.address || !/^0x[a-fA-F0-9]{40}$/.test(getBalanceParameters.address)) {
            console.error("Invalid address provided")
            throw new InvalidAddressError({ address: getBalanceParameters.address })
        }

        try {
            return await getBalance(JSWagmiContext.instance.config, getBalanceParameters)
        } catch (error) {
            console.error("Error fetching balance:", error)
            throw error
        }
    }

    getBlock = async function (getBlockParameters: GetBlockParameters) {
        try {
            return await getBlock(JSWagmiContext.instance.config, getBlockParameters);
        } catch (error) {
            console.error("Error getBlock:", error);
            throw error;
        }
    }

    getBlockTransactionCount = async function (getBlockTransactionCountParameters: GetBlockTransactionCountParameters) {
        try {
            return await getBlockTransactionCount(JSWagmiContext.instance.config, getBlockTransactionCountParameters);
        } catch (error) {
            console.error("Error get block transaction count:", error);
            throw error;
        }
    }

    getTransaction = async function (getTransactionParameters: GetTransactionParameters) {
        try {
            return await getTransaction(JSWagmiContext.instance.config, getTransactionParameters);
        } catch (error) {
            console.error("Error get transaction:", error);
            throw error;
        }
    }
    call = async function (callParameters: CallParameters) {
        try {
            return await call(JSWagmiContext.instance.config, callParameters);
        } catch (error) {
            console.error("Error call:", error);
            throw error;
        }
    }

    getTransactionConfirmations = async function (getTransactionConfirmationsParameters: GetTransactionConfirmationsParameters) {
        try {
            return await getTransactionConfirmations(JSWagmiContext.instance.config, getTransactionConfirmationsParameters);
        } catch (error) {
            console.error("Error get transaction confirmations:", error);
            throw error;
        }
    }

    getTransactionCount = async function (getTransactionCountParameters: GetTransactionCountParameters) {

        if (!getTransactionCountParameters.address || !/^0x[a-fA-F0-9]{40}$/.test(getTransactionCountParameters.address)) {
            console.error("Invalid address provided")
            throw new InvalidAddressError({ address: getTransactionCountParameters.address })
        }

        try {
            return await getTransactionCount(JSWagmiContext.instance.config, getTransactionCountParameters)
        } catch (error) {
            console.error("Error fetching transaction count:", error)
            throw error
        }
    }

    getToken = async function (getTokenParameters: GetTokenParameters) {
        try {
            return await getToken(JSWagmiContext.instance.config, getTokenParameters)
        } catch (error) {
            console.error("Error fetching token info:", error)
            throw error
        }
    }


    signMessage = async function (signMessageParameters: SignMessageParameters) {
        if (!signMessageParameters.message) {
            console.error("No message provided")
            return null
        }
        try {
            return await signMessage(JSWagmiContext.instance.config, signMessageParameters)
        } catch (error) {
            console.error("Error signMessage:", error)
            throw error
        }
    }

    readContract = async function (readContractParameters: ReadContractParameters) {
        try {
            return await readContract(JSWagmiContext.instance.config, readContractParameters)
        } catch (error) {
            console.error("Error readContract:", error)
            throw error
        }
    }

    readContracts = async function (readContractsParameters: ReadContractsParameters) {
        try {
            return await readContracts(JSWagmiContext.instance.config, readContractsParameters)
        } catch (error) {
            console.error("Error readContracts:", error)
            throw error
        }
    }


    getTransactionReceipt = async function (getTransactionReceiptParameters: GetTransactionReceiptParameters) {
        try {
            return await getTransactionReceipt(JSWagmiContext.instance.config, getTransactionReceiptParameters)
        } catch (error) {
            console.error("Error getTransactionReceipt:", error)
            throw error
        }
    }

    sendTransaction = async function (sendTransactionParameters: SendTransactionParameters) {
        try {
            return await sendTransaction(JSWagmiContext.instance.config, sendTransactionParameters);
        } catch (error) {
            console.error("Error sendTransaction:", error);
            throw error;
        }
    }

    watchChainId = async function (watchChainIdParameters: WatchChainIdParameters) {
        try {
            return await watchChainId(JSWagmiContext.instance.config, watchChainIdParameters)
        } catch (error) {
            console.error("Error watchChainId:", error)
            return null
        }
    }

    writeContract = async function (writeContractParameters: WriteContractParameters) {
        try {
            return await writeContract(JSWagmiContext.instance.config, writeContractParameters)
        } catch (error) {
            console.error("Error writeContract:", error)
            return null
        }
    }

    estimateGas = async function (estimateGasParameters: EstimateGasParameters) {
        try {
            return await estimateGas(JSWagmiContext.instance.config, estimateGasParameters)
        } catch (error) {
            console.error("Error estimateGas:", error)
            throw error
        }
    }
}
