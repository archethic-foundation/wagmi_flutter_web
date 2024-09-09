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
    getAccount = function (useSecondConfig: boolean) {
        return getAccount(useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config);
    }


    getChainId = function (useSecondConfig: boolean) {
        const chainId = getChainId(useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config)
        return chainId
    }

    getChains = function (useSecondConfig: boolean) {
        const chains = getChains(useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config)
        return chains
    }

    getBlockNumber = async function (getBlockNumberParameters: GetBlockNumberParameters,
        useSecondConfig: boolean
    ) {
        try {
            return await getBlockNumber(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockNumberParameters)
            )
        } catch (error) {
            console.error("Error fetching block number:", error)
            throw error
        }
    }

    getGasPrice = async function (getGasPriceParameters: GetGasPriceParameters, useSecondConfig: boolean) {
        try {
            return await getGasPrice(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getGasPriceParameters)
            )
        } catch (error) {
            console.error("Error fetching gas price:", error)
            throw error
        }
    }

    getBalance = async function (getBalanceParameters: GetBalanceParameters, useSecondConfig: boolean) {
        if (!getBalanceParameters.address || !/^0x[a-fA-F0-9]{40}$/.test(getBalanceParameters.address)) {
            console.error("Invalid address provided")
            throw new InvalidAddressError({ address: getBalanceParameters.address })
        }

        try {
            return await getBalance(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBalanceParameters)
            )
        } catch (error) {
            console.error("Error fetching balance:", error)
            throw error
        }
    }

    getBlock = async function (getBlockParameters: GetBlockParameters, useSecondConfig: boolean) {
        try {
            return await getBlock(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockParameters)
            )
        } catch (error) {
            console.error("Error getBlock:", error)
            throw error
        }
    }

    getBlockTransactionCount = async function (getBlockTransactionCountParameters: GetBlockTransactionCountParameters, useSecondConfig: boolean) {
        try {
            return await getBlockTransactionCount(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBlockTransactionCountParameters)
            )
        } catch (error) {
            console.error("Error get block transaction count:", error)
            throw error
        }
    }

    getTransaction = async function (getTransactionParameters: GetTransactionParameters, useSecondConfig: boolean) {
        try {
            return await getTransaction(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionParameters)
            )
        } catch (error) {
            console.error("Error get transaction:", error)
            throw error
        }
    }
    call = async function (callParameters: CallParameters, useSecondConfig: boolean) {
        try {
            return await call(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(callParameters)
            )
        } catch (error) {
            console.error("Error call:", error);
            throw error;
        }
    }

    getTransactionConfirmations = async function (getTransactionConfirmationsParameters: GetTransactionConfirmationsParameters, useSecondConfig: boolean) {
        try {
            return await getTransactionConfirmations(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionConfirmationsParameters)
            )
        } catch (error) {
            console.error("Error get transaction confirmations:", error)
            throw error
        }
    }

    getTransactionCount = async function (getTransactionCountParameters: GetTransactionCountParameters, useSecondConfig: boolean) {

        if (!getTransactionCountParameters.address || !/^0x[a-fA-F0-9]{40}$/.test(getTransactionCountParameters.address)) {
            console.error("Invalid address provided")
            throw new InvalidAddressError({ address: getTransactionCountParameters.address })
        }

        try {
            return await getTransactionCount(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionCountParameters)
            )
        } catch (error) {
            console.error("Error fetching transaction count:", error)
            throw error
        }
    }

    getToken = async function (getTokenParameters: GetTokenParameters, useSecondConfig: boolean) {
        try {
            return await getToken(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTokenParameters)
            )
        } catch (error) {
            console.error("Error fetching token info:", error)
            throw error
        }
    }


    signMessage = async function (signMessageParameters: SignMessageParameters, useSecondConfig: boolean) {
        if (!signMessageParameters.message) {
            console.error("No message provided")
            return null
        }
        try {
            return await signMessage(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(signMessageParameters)
            )
        } catch (error) {
            console.error("Error signMessage:", error)
            throw error
        }
    }

    readContract = async function (readContractParameters: ReadContractParameters, useSecondConfig: boolean) {
        try {
            return await readContract(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(readContractParameters)
            )
        } catch (error) {
            console.error("Error readContract:", error)
            throw error
        }
    }

    readContracts = async function (readContractsParameters: ReadContractsParameters, useSecondConfig: boolean) {
        try {
            return await readContracts(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(readContractsParameters)
            )
        } catch (error) {
            console.error("Error readContracts:", error)
            throw error
        }
    }


    getTransactionReceipt = async function (getTransactionReceiptParameters: GetTransactionReceiptParameters, useSecondConfig: boolean) {
        try {
            return await getTransactionReceipt(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getTransactionReceiptParameters)
            )
        } catch (error) {
            console.error("Error getTransactionReceipt:", error)
            throw error
        }
    }

    sendTransaction = async function (sendTransactionParameters: SendTransactionParameters, useSecondConfig: boolean) {
        try {
            return await sendTransaction(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(sendTransactionParameters)
            )
        } catch (error) {
            console.error("Error sendTransaction:", error)
            throw error
        }
    }

    watchChainId = async function (watchChainIdParameters: WatchChainIdParameters, useSecondConfig: boolean) {
        try {
            return await watchChainId(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(watchChainIdParameters)
            )
        } catch (error) {
            console.error("Error watchChainId:", error)
            throw error
        }
    }

    watchContractEvent = async function (watchContractEventParameters: WatchContractEventParameters, useSecondConfig: boolean) {
        try {
            return await watchContractEvent(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(watchContractEventParameters)
            )
        } catch (error) {
            console.error("Error watchContractEvent:", error)
            throw error
        }
    }

    writeContract = async function (writeContractParameters: WriteContractParameters, useSecondConfig: boolean) {
        try {
            return await writeContract(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(writeContractParameters)
            )
        } catch (error) {
            console.error("Error writeContract:", error)
            throw error
        }
    }

    estimateGas = async function (estimateGasParameters: EstimateGasParameters, useSecondConfig: boolean) {
        try {
            return await estimateGas(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateGasParameters)
            )
        } catch (error) {
            console.error("Error estimateGas:", error)
            throw error
        }
    }
    estimateFeesPerGas = async function (estimateFeesPerGasParameters: EstimateFeesPerGasParameters, useSecondConfig: boolean) {
        try {
            return await estimateFeesPerGas(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateFeesPerGasParameters)
            )
        } catch (error) {
            console.error("Error estimateFeesPerGas:", error)
            throw error
        }
    }

    estimateMaxPriorityFeePerGas = async function (estimateMaxPriorityFeePerGasParameters: EstimateMaxPriorityFeePerGasParameters, useSecondConfig: boolean) {
        try {
            return await estimateMaxPriorityFeePerGas(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(estimateMaxPriorityFeePerGasParameters)
            )
        } catch (error) {
            console.error("Error estimateMaxPriorityFeePerGas:", error)
            throw error
        }
    }
    getBytecode = async function (getBytecodeParameters: GetBytecodeParameters, useSecondConfig: boolean) {
        try {
            return await getBytecode(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getBytecodeParameters)
            )
        } catch (error) {
            console.error("Error getBytecode:", error)
            throw error
        }
    }
    disconnect = async function (disconnectParameters: DisconnectParameters, useSecondConfig: boolean) {
        try {
            return await disconnect(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(disconnectParameters)
            )
        } catch (error) {
            console.error("Error disconnect:", error)
            throw error
        }
    }
    waitForTransactionReceipt = async function (waitForTransactionReceiptParameters: WaitForTransactionReceiptParameters, useSecondConfig: boolean) {
        try {
            return await waitForTransactionReceipt(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(waitForTransactionReceiptParameters)
            )
        } catch (error) {
            console.error("Error waitForTransactionReceipt:", error)
            throw error
        }
    }
    getFeeHistory = async function (getFeeHistoryParameters: GetFeeHistoryParameters, useSecondConfig: boolean) {
        try {
            return await getFeeHistory(
                useSecondConfig ? JSWagmiContext.instance.config2 : JSWagmiContext.instance.config,
                illegalNullsToUndefined(getFeeHistoryParameters)
            )
        } catch (error) {
            console.error("Error getFeeHistory:", error)
            throw error
        }
    }
}
