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
    getAccount = function (transportOnlyConfig: boolean) {
        return getAccount(transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config);
    }


    getChainId = function (transportOnlyConfig: boolean) {
        const chainId = getChainId(transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config)
        return chainId
    }

    getChains = function (transportOnlyConfig: boolean) {
        const chains = getChains(transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config)
        return chains
    }

    getBlockNumber = async function (getBlockNumberParameters: GetBlockNumberParameters,
        transportOnlyConfig: boolean
    ) {
        try {
            return await getBlockNumber(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockNumberParameters)
            )
        } catch (error) {
            console.error("Error fetching block number:", error)
            throw error
        }
    }

    getGasPrice = async function (getGasPriceParameters: GetGasPriceParameters, transportOnlyConfig: boolean) {
        try {
            return await getGasPrice(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getGasPriceParameters)
            )
        } catch (error) {
            console.error("Error fetching gas price:", error)
            throw error
        }
    }

    getBalance = async function (getBalanceParameters: GetBalanceParameters, transportOnlyConfig: boolean) {
        if (!getBalanceParameters.address || !/^0x[a-fA-F0-9]{40}$/.test(getBalanceParameters.address)) {
            console.error("Invalid address provided")
            throw new InvalidAddressError({ address: getBalanceParameters.address })
        }

        try {
            return await getBalance(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBalanceParameters)
            )
        } catch (error) {
            console.error("Error fetching balance:", error)
            throw error
        }
    }

    getBlock = async function (getBlockParameters: GetBlockParameters, transportOnlyConfig: boolean) {
        try {
            return await getBlock(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockParameters)
            )
        } catch (error) {
            console.error("Error getBlock:", error)
            throw error
        }
    }

    getBlockTransactionCount = async function (getBlockTransactionCountParameters: GetBlockTransactionCountParameters, transportOnlyConfig: boolean) {
        try {
            return await getBlockTransactionCount(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockTransactionCountParameters)
            )
        } catch (error) {
            console.error("Error get block transaction count:", error)
            throw error
        }
    }

    getTransaction = async function (getTransactionParameters: GetTransactionParameters, transportOnlyConfig: boolean) {
        try {
            return await getTransaction(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionParameters)
            )
        } catch (error) {
            console.error("Error get transaction:", error)
            throw error
        }
    }
    call = async function (callParameters: CallParameters, transportOnlyConfig: boolean) {
        try {
            return await call(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(callParameters)
            )
        } catch (error) {
            console.error("Error call:", error);
            throw error;
        }
    }

    getTransactionConfirmations = async function (getTransactionConfirmationsParameters: GetTransactionConfirmationsParameters, transportOnlyConfig: boolean) {
        try {
            return await getTransactionConfirmations(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionConfirmationsParameters)
            )
        } catch (error) {
            console.error("Error get transaction confirmations:", error)
            throw error
        }
    }

    getTransactionCount = async function (getTransactionCountParameters: GetTransactionCountParameters, transportOnlyConfig: boolean) {

        if (!getTransactionCountParameters.address || !/^0x[a-fA-F0-9]{40}$/.test(getTransactionCountParameters.address)) {
            console.error("Invalid address provided")
            throw new InvalidAddressError({ address: getTransactionCountParameters.address })
        }

        try {
            return await getTransactionCount(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionCountParameters)
            )
        } catch (error) {
            console.error("Error fetching transaction count:", error)
            throw error
        }
    }

    getToken = async function (getTokenParameters: GetTokenParameters, transportOnlyConfig: boolean) {
        try {
            return await getToken(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTokenParameters)
            )
        } catch (error) {
            console.error("Error fetching token info:", error)
            throw error
        }
    }


    signMessage = async function (signMessageParameters: SignMessageParameters, transportOnlyConfig: boolean) {
        if (!signMessageParameters.message) {
            console.error("No message provided")
            return null
        }
        try {
            return await signMessage(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(signMessageParameters)
            )
        } catch (error) {
            console.error("Error signMessage:", error)
            throw error
        }
    }

    readContract = async function (readContractParameters: ReadContractParameters, transportOnlyConfig: boolean) {
        try {
            return await readContract(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(readContractParameters)
            )
        } catch (error) {
            console.error("Error readContract:", error)
            throw error
        }
    }

    readContracts = async function (readContractsParameters: ReadContractsParameters, transportOnlyConfig: boolean) {
        try {
            return await readContracts(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(readContractsParameters)
            )
        } catch (error) {
            console.error("Error readContracts:", error)
            throw error
        }
    }


    getTransactionReceipt = async function (getTransactionReceiptParameters: GetTransactionReceiptParameters, transportOnlyConfig: boolean) {
        try {
            return await getTransactionReceipt(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionReceiptParameters)
            )
        } catch (error) {
            console.error("Error getTransactionReceipt:", error)
            throw error
        }
    }

    sendTransaction = async function (sendTransactionParameters: SendTransactionParameters, transportOnlyConfig: boolean) {
        try {
            return await sendTransaction(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(sendTransactionParameters)
            )
        } catch (error) {
            console.error("Error sendTransaction:", error)
            throw error
        }
    }

    watchChainId = async function (watchChainIdParameters: WatchChainIdParameters, transportOnlyConfig: boolean) {
        try {
            return await watchChainId(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(watchChainIdParameters)
            )
        } catch (error) {
            console.error("Error watchChainId:", error)
            throw error
        }
    }

    watchContractEvent = async function (watchContractEventParameters: WatchContractEventParameters, transportOnlyConfig: boolean) {
        try {
            return await watchContractEvent(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(watchContractEventParameters)
            )
        } catch (error) {
            console.error("Error watchContractEvent:", error)
            throw error
        }
    }

    writeContract = async function (writeContractParameters: WriteContractParameters, transportOnlyConfig: boolean) {
        try {
            return await writeContract(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(writeContractParameters)
            )
        } catch (error) {
            console.error("Error writeContract:", error)
            throw error
        }
    }

    estimateGas = async function (estimateGasParameters: EstimateGasParameters, transportOnlyConfig: boolean) {
        try {
            return await estimateGas(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateGasParameters)
            )
        } catch (error) {
            console.error("Error estimateGas:", error)
            throw error
        }
    }
    estimateFeesPerGas = async function (estimateFeesPerGasParameters: EstimateFeesPerGasParameters, transportOnlyConfig: boolean) {
        try {
            return await estimateFeesPerGas(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateFeesPerGasParameters)
            )
        } catch (error) {
            console.error("Error estimateFeesPerGas:", error)
            throw error
        }
    }

    estimateMaxPriorityFeePerGas = async function (estimateMaxPriorityFeePerGasParameters: EstimateMaxPriorityFeePerGasParameters, transportOnlyConfig: boolean) {
        try {
            return await estimateMaxPriorityFeePerGas(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateMaxPriorityFeePerGasParameters)
            )
        } catch (error) {
            console.error("Error estimateMaxPriorityFeePerGas:", error)
            throw error
        }
    }
    getBytecode = async function (getBytecodeParameters: GetBytecodeParameters, transportOnlyConfig: boolean) {
        try {
            return await getBytecode(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBytecodeParameters)
            )
        } catch (error) {
            console.error("Error getBytecode:", error)
            throw error
        }
    }
    disconnect = async function (disconnectParameters: DisconnectParameters, transportOnlyConfig: boolean) {
        try {
            return await disconnect(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(disconnectParameters)
            )
        } catch (error) {
            console.error("Error disconnect:", error)
            throw error
        }
    }
    waitForTransactionReceipt = async function (waitForTransactionReceiptParameters: WaitForTransactionReceiptParameters, transportOnlyConfig: boolean) {
        try {
            return await waitForTransactionReceipt(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(waitForTransactionReceiptParameters)
            )
        } catch (error) {
            console.error("Error waitForTransactionReceipt:", error)
            throw error
        }
    }
    getFeeHistory = async function (getFeeHistoryParameters: GetFeeHistoryParameters, transportOnlyConfig: boolean) {
        try {
            return await getFeeHistory(
                transportOnlyConfig ? JSWagmiContext.instance.transportOnlyConfig : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getFeeHistoryParameters)
            )
        } catch (error) {
            console.error("Error getFeeHistory:", error)
            throw error
        }
    }
}
