import {
    CallParameters,
    DisconnectParameters,
    EstimateFeesPerGasParameters,
    EstimateGasParameters,
    EstimateMaxPriorityFeePerGasParameters,
    GetBalanceParameters,
    GetBlockNumberParameters,
    GetBlockParameters,
    GetBlockTransactionCountParameters,
    GetBytecodeParameters,
    GetFeeHistoryParameters,
    GetGasPriceParameters,
    GetTokenParameters,
    GetTransactionConfirmationsParameters,
    GetTransactionCountParameters,
    GetTransactionParameters,
    GetTransactionReceiptParameters,
    ReadContractParameters,
    ReadContractsParameters,
    SendTransactionParameters,
    SignMessageParameters,
    WaitForTransactionReceiptParameters,
    WatchChainIdParameters,
    WatchContractEventParameters,
    WriteContractParameters,
    call,
    disconnect,
    estimateFeesPerGas,
    estimateGas,
    estimateMaxPriorityFeePerGas,
    getAccount,
    getBalance,
    getBlock,
    getBlockNumber,
    getBlockTransactionCount,
    getBytecode,
    getChainId,
    getChains,
    getFeeHistory,
    getGasPrice,
    getToken,
    getTransaction,
    getTransactionConfirmations,
    getTransactionCount,
    getTransactionReceipt,
    readContract,
    readContracts,
    sendTransaction,
    signMessage,
    waitForTransactionReceipt,
    watchChainId,
    watchContractEvent,
    writeContract,
} from "@wagmi/core";
import { InvalidAddressError } from "viem";
import { JSWagmiContext } from "./context";
import { illegalNullsToUndefined } from "./parameters_utils";

export class JSWagmiCore {
    getAccount = function () {
        return getAccount(JSWagmiContext.instance.config);
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
            return await getBlockNumber(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockNumberParameters)
            )
        } catch (error) {
            console.error("Error fetching block number:", error)
            throw error
        }
    }

    getGasPrice = async function (getGasPriceParameters: GetGasPriceParameters) {
        try {
            return await getGasPrice(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getGasPriceParameters)
            )
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
            return await getBalance(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBalanceParameters)
            )
        } catch (error) {
            console.error("Error fetching balance:", error)
            throw error
        }
    }

    getBlock = async function (getBlockParameters: GetBlockParameters) {
        try {
            return await getBlock(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockParameters)
            )
        } catch (error) {
            console.error("Error getBlock:", error);
            throw error;
        }
    }

    getBlockTransactionCount = async function (getBlockTransactionCountParameters: GetBlockTransactionCountParameters) {
        try {
            return await getBlockTransactionCount(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockTransactionCountParameters)
            )
        } catch (error) {
            console.error("Error get block transaction count:", error);
            throw error;
        }
    }

    getTransaction = async function (getTransactionParameters: GetTransactionParameters) {
        try {
            return await getTransaction(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionParameters)
            )
        } catch (error) {
            console.error("Error get transaction:", error);
            throw error;
        }
    }
    call = async function (callParameters: CallParameters) {
        try {
            return await call(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(callParameters)
            )
        } catch (error) {
            console.error("Error call:", error);
            throw error;
        }
    }

    getTransactionConfirmations = async function (getTransactionConfirmationsParameters: GetTransactionConfirmationsParameters) {
        try {
            return await getTransactionConfirmations(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionConfirmationsParameters)
            )
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
            return await getTransactionCount(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionCountParameters)
            )
        } catch (error) {
            console.error("Error fetching transaction count:", error)
            throw error
        }
    }

    getToken = async function (getTokenParameters: GetTokenParameters) {
        try {
            return await getToken(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTokenParameters)
            )
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
            return await signMessage(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(signMessageParameters)
            )
        } catch (error) {
            console.error("Error signMessage:", error)
            throw error
        }
    }

    readContract = async function (readContractParameters: ReadContractParameters) {
        try {
            return await readContract(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(readContractParameters)
            )
        } catch (error) {
            console.error("Error readContract:", error)
            throw error
        }
    }

    readContracts = async function (readContractsParameters: ReadContractsParameters) {
        try {
            return await readContracts(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(readContractsParameters)
            )
        } catch (error) {
            console.error("Error readContracts:", error)
            throw error
        }
    }


    getTransactionReceipt = async function (getTransactionReceiptParameters: GetTransactionReceiptParameters) {
        try {
            return await getTransactionReceipt(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionReceiptParameters)
            )
        } catch (error) {
            console.error("Error getTransactionReceipt:", error)
            throw error
        }
    }

    sendTransaction = async function (sendTransactionParameters: SendTransactionParameters) {
        try {
            return await sendTransaction(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(sendTransactionParameters)
            )
        } catch (error) {
            console.error("Error sendTransaction:", error);
            throw error;
        }
    }

    watchChainId = async function (watchChainIdParameters: WatchChainIdParameters) {
        try {
            return await watchChainId(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(watchChainIdParameters)
            )
        } catch (error) {
            console.error("Error watchChainId:", error)
            throw error;
        }
    }

    watchContractEvent = async function (watchContractEventParameters: WatchContractEventParameters) {
        try {
            return await watchContractEvent(JSWagmiContext.instance.config, watchContractEventParameters)
        } catch (error) {
            console.error("Error watchContractEvent:", error)
            throw error;
        }
    }

    writeContract = async function (writeContractParameters: WriteContractParameters) {
        try {
            return await writeContract(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(writeContractParameters)
            )
        } catch (error) {
            console.error("Error writeContract:", error)
            return null
        }
    }

    estimateGas = async function (estimateGasParameters: EstimateGasParameters) {
        try {
            return await estimateGas(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateGasParameters)
            )
        } catch (error) {
            console.error("Error estimateGas:", error)
            throw error
        }
    }
    estimateFeesPerGas = async function (estimateFeesPerGasParameters: EstimateFeesPerGasParameters) {
        try {
            return await estimateFeesPerGas(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateFeesPerGasParameters)
            )
        } catch (error) {
            console.error("Error estimateFeesPerGas:", error)
            throw error
        }
    }

    estimateMaxPriorityFeePerGas = async function (estimateMaxPriorityFeePerGasParameters: EstimateMaxPriorityFeePerGasParameters) {
        try {
            return await estimateMaxPriorityFeePerGas(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateMaxPriorityFeePerGasParameters)
            )
        } catch (error) {
            console.error("Error estimateMaxPriorityFeePerGas:", error)
            throw error
        }
    }
    getBytecode = async function (getBytecodeParameters: GetBytecodeParameters) {
        try {
            return await getBytecode(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBytecodeParameters)
            )
        } catch (error) {
            console.error("Error getBytecode:", error)
            throw error
        }
    }
    disconnect = async function (disconnectParameters: DisconnectParameters) {
        try {
            return await disconnect(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(disconnectParameters)
            )
        } catch (error) {
            console.error("Error disconnect:", error)
            throw error
        }
    }
    waitForTransactionReceipt = async function (waitForTransactionReceiptParameters: WaitForTransactionReceiptParameters) {
        try {
            return await waitForTransactionReceipt(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(waitForTransactionReceiptParameters)
            )
        } catch (error) {
            console.error("Error waitForTransactionReceipt:", error)
            throw error
        }
    }
    getFeeHistory = async function (getFeeHistoryParameters: GetFeeHistoryParameters) {
        try {
            return await getFeeHistory(
                JSWagmiContext.instance.config,
                illegalNullsToUndefined(getFeeHistoryParameters)
            )
        } catch (error) {
            console.error("Error getFeeHistory:", error)
            throw error
        }
    }
}
