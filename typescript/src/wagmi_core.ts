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
    WatchConnectionsParameters,
    WatchAccountParameters,
    SwitchChainParameters,
    SwitchAccountParameters,
    VerifyMessageParameters,
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
    watchConnections,
    switchChain,
    switchAccount,
    watchAccount,
    verifyMessage,
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

    getBlockNumber = this.#guard(
        'getBlockNumber',
        async (params: GetBlockNumberParameters) => getBlockNumber(
            JSWagmiContext.instance.config,
            params
        )
    )

    getGasPrice = this.#guard(
        'getGasPrice',
        async (params: GetGasPriceParameters) => getGasPrice(
            JSWagmiContext.instance.config,
            params
        )
    )

    getBalance = this.#guard(
        'getBalance',
        async (params: GetBalanceParameters) => {
            if (!params.address || !/^0x[a-fA-F0-9]{40}$/.test(params.address)) {
                console.error("Invalid address provided")
                throw new InvalidAddressError({ address: params.address })
            }

            return getBalance(
                JSWagmiContext.instance.config,
                params
            )
        }
    )

    getBlock = this.#guard(
        'getBlock',
        async (params: GetBlockParameters) => getBlock(
            JSWagmiContext.instance.config,
            params
        )
    )

    getBlockTransactionCount = this.#guard(
        'getBlockTransactionCount',
        async (params: GetBlockTransactionCountParameters) => getBlockTransactionCount(
            JSWagmiContext.instance.config,
            params
        )
    )

    getTransaction = this.#guard(
        'getTransaction',
        async (params: GetTransactionParameters) => getTransaction(
            JSWagmiContext.instance.config,
            params
        )
    )

    call = this.#guard(
        'call',
        async (params: CallParameters) => call(
            JSWagmiContext.instance.config,
            params
        )
    )

    getTransactionConfirmations = this.#guard(
        'getTransactionConfirmations',
        async (params: GetTransactionConfirmationsParameters) => getTransactionConfirmations(
            JSWagmiContext.instance.config,
            params
        )
    )

    getTransactionCount = this.#guard(
        'getTransactionCount',
        async (params: GetTransactionCountParameters) => {
            if (!params.address || !/^0x[a-fA-F0-9]{40}$/.test(params.address)) {
                console.error("Invalid address provided")
                throw new InvalidAddressError({ address: params.address })
            }

            return getTransactionCount(
                JSWagmiContext.instance.config,
                params
            )
        }
    )

    getToken = this.#guard(
        'getToken',
        async (params: GetTokenParameters) => getToken(
            JSWagmiContext.instance.config,
            params
        )
    )


    signMessage = this.#guard(
        'signMessage',
        async (params: SignMessageParameters) => {
            if (!params.message) {
                console.error("No message provided")
                return null
            }
            return signMessage(
                JSWagmiContext.instance.config,
                params
            )
        }
    )

    readContract = this.#guard(
        'readContract',
        async (params: ReadContractParameters) => readContract(
            JSWagmiContext.instance.config,
            params
        )
    )

    readContracts = this.#guard(
        'readContracts',
        async (params: ReadContractsParameters) => readContracts(
            JSWagmiContext.instance.config,
            params
        )
    )

    getTransactionReceipt = this.#guard(
        'getTransactionReceipt',
        async (params: GetTransactionReceiptParameters) => getTransactionReceipt(
            JSWagmiContext.instance.config,
            params
        )
    )

    sendTransaction = this.#guard(
        'sendTransaction',
        async (params: SendTransactionParameters) => sendTransaction(
            JSWagmiContext.instance.config,
            params
        )
    )

    watchChainId = this.#guard(
        'watchChainId',
        async (params: WatchChainIdParameters) => watchChainId(
            JSWagmiContext.instance.config,
            params
        )
    )

    watchContractEvent = this.#guard(
        'watchContractEvent',
        async (params: WatchContractEventParameters) => watchContractEvent(
            JSWagmiContext.instance.config,
            params
        )
    )

    writeContract = this.#guard(
        'writeContract',
        async (params: WriteContractParameters) => writeContract(
            JSWagmiContext.instance.config,
            params
        )
    )

    estimateGas = this.#guard(
        'estimateGas',
        async (params: EstimateGasParameters) => estimateGas(
            JSWagmiContext.instance.config,
            params
        )
    )

    estimateFeesPerGas = this.#guard(
        'estimateFeesPerGas',
        async (params: EstimateFeesPerGasParameters) => estimateFeesPerGas(
            JSWagmiContext.instance.config,
            params
        )
    )

    estimateMaxPriorityFeePerGas = this.#guard(
        'estimateMaxPriorityFeePerGas',
        async (params: EstimateMaxPriorityFeePerGasParameters) => estimateMaxPriorityFeePerGas(
            JSWagmiContext.instance.config,
            params
        )

    )

    getBytecode = this.#guard(
        'getBytecode',
        async (params: GetBytecodeParameters) => getBytecode(
            JSWagmiContext.instance.config,
            params
        )
    )

    disconnect = this.#guard(
        'disconnect',
        async (params: DisconnectParameters) => disconnect(
            JSWagmiContext.instance.config,
            params
        )
    )

    waitForTransactionReceipt = this.#guard(
        'waitForTransactionReceipt',
        async (params: WaitForTransactionReceiptParameters) => waitForTransactionReceipt(
            JSWagmiContext.instance.config,
            params
        )
    )

    getFeeHistory = this.#guard(
        'getFeeHistory',
        async (params: GetFeeHistoryParameters) => getFeeHistory(
            JSWagmiContext.instance.config,
            params
        )
    )

    watchConnections = this.#guard(
        'watchConnections',
        async (params: WatchConnectionsParameters) => watchConnections(
            JSWagmiContext.instance.config,
            params
        )
    )
    switchChain = this.#guard(
        'switchChain',
        async (params: SwitchChainParameters) => switchChain(
            JSWagmiContext.instance.config,
            params
        )
    )
    switchAccount = this.#guard(
        'switchAccount',
        async (params: SwitchAccountParameters) => switchAccount(
            JSWagmiContext.instance.config,
            params
        )
    )
    watchAccount = this.#guard(
        'watchAccount',
        async (params: WatchAccountParameters) => watchAccount(
            JSWagmiContext.instance.config,
            params
        )
    )
    verifyMessage = this.#guard(
        'verifyMessage',
        async (params: VerifyMessageParameters) => verifyMessage(
            JSWagmiContext.instance.config,
            params
        )
    )

    #guard<ParamsT, ResultT>(actionName: string, action: (params: ParamsT) => Promise<ResultT>): (params: ParamsT) => Promise<ResultT> {
        return async (params: ParamsT) => {
            try {
                return await action(illegalNullsToUndefined(params))
            } catch (error) {
                console.error(`Error ${actionName} (${JSON.stringify(params)}) : `, error)
                throw error
            }
        }
    }
}
