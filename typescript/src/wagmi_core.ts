import {
    CallParameters,
    Config,
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
    WatchConnectionsParameters,
    WatchAccountParameters,
    SwitchChainParameters,
    SwitchAccountParameters,
    VerifyMessageParameters,
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
    watchConnections,
    switchChain,
    switchAccount,
    watchAccount,
    verifyMessage,
} from "@wagmi/core";
import { InvalidAddressError } from "viem";
import { illegalNullsToUndefined } from "./parameters_utils";

export class JSWagmiCore {
    getAccount = getAccount

    getChainId = getChainId

    getChains = getChains

    getBlockNumber = this.#guard(
        'getBlockNumber',
        async (config: Config, params: GetBlockNumberParameters) => getBlockNumber(
            config,
            params
        )
    )

    getGasPrice = this.#guard(
        'getGasPrice',
        async (config: Config, params: GetGasPriceParameters) => getGasPrice(
            config,
            params
        )
    )

    getBalance = this.#guard(
        'getBalance',
        async (config: Config, params: GetBalanceParameters) => {
            if (!params.address || !/^0x[a-fA-F0-9]{40}$/.test(params.address)) {
                console.error("Invalid address provided")
                throw new InvalidAddressError({ address: params.address })
            }

            return getBalance(
                config,
                params
            )
        }
    )

    getBlock = this.#guard(
        'getBlock',
        async (config: Config, params: GetBlockParameters) => getBlock(
            config,
            params
        )
    )

    getBlockTransactionCount = this.#guard(
        'getBlockTransactionCount',
        async (config: Config, params: GetBlockTransactionCountParameters) => getBlockTransactionCount(
            config,
            params
        )
    )

    getTransaction = this.#guard(
        'getTransaction',
        async (config: Config, params: GetTransactionParameters) => getTransaction(
            config,
            params
        )
    )

    call = this.#guard(
        'call',
        async (config: Config, params: CallParameters) => call(
            config,
            params
        )
    )

    getTransactionConfirmations = this.#guard(
        'getTransactionConfirmations',
        async (config: Config, params: GetTransactionConfirmationsParameters) => getTransactionConfirmations(
            config,
            params
        )
    )

    getTransactionCount = this.#guard(
        'getTransactionCount',
        async (config: Config, params: GetTransactionCountParameters) => {
            if (!params.address || !/^0x[a-fA-F0-9]{40}$/.test(params.address)) {
                console.error("Invalid address provided")
                throw new InvalidAddressError({ address: params.address })
            }

            return getTransactionCount(
                config,
                params
            )
        }
    )

    getToken = this.#guard(
        'getToken',
        async (config: Config, params: GetTokenParameters) => getToken(
            config,
            params
        )
    )


    signMessage = this.#guard(
        'signMessage',
        async (config: Config, params: SignMessageParameters) => {
            if (!params.message) {
                console.error("No message provided")
                return null
            }
            return signMessage(
                config,
                params
            )
        }
    )

    readContract = this.#guard(
        'readContract',
        async (config: Config, params: ReadContractParameters) => readContract(
            config,
            params
        )
    )

    readContracts = this.#guard(
        'readContracts',
        async (config: Config, params: ReadContractsParameters) => readContracts(
            config,
            params
        )
    )

    getTransactionReceipt = this.#guard(
        'getTransactionReceipt',
        async (config: Config, params: GetTransactionReceiptParameters) => getTransactionReceipt(
            config,
            params
        )
    )

    sendTransaction = this.#guard(
        'sendTransaction',
        async (config: Config, params: SendTransactionParameters) => sendTransaction(
            config,
            params
        )
    )

    watchChainId = this.#guard(
        'watchChainId',
        async (config: Config, params: WatchChainIdParameters) => watchChainId(
            config,
            params
        )
    )

    watchContractEvent = this.#guard(
        'watchContractEvent',
        async (config: Config, params: WatchContractEventParameters) => watchContractEvent(
            config,
            params
        )
    )

    writeContract = this.#guard(
        'writeContract',
        async (config: Config, params: WriteContractParameters) => writeContract(
            config,
            params
        )
    )

    estimateGas = this.#guard(
        'estimateGas',
        async (config: Config, params: EstimateGasParameters) => estimateGas(
            config,
            params
        )
    )

    estimateFeesPerGas = this.#guard(
        'estimateFeesPerGas',
        async (config: Config, params: EstimateFeesPerGasParameters) => estimateFeesPerGas(
            config,
            params
        )
    )

    estimateMaxPriorityFeePerGas = this.#guard(
        'estimateMaxPriorityFeePerGas',
        async (config: Config, params: EstimateMaxPriorityFeePerGasParameters) => estimateMaxPriorityFeePerGas(
            config,
            params
        )

    )

    getBytecode = this.#guard(
        'getBytecode',
        async (config: Config, params: GetBytecodeParameters) => getBytecode(
            config,
            params
        )
    )

    disconnect = this.#guard(
        'disconnect',
        async (config: Config, params: DisconnectParameters) => disconnect(
            config,
            params
        )
    )

    waitForTransactionReceipt = this.#guard(
        'waitForTransactionReceipt',
        async (config: Config, params: WaitForTransactionReceiptParameters) => waitForTransactionReceipt(
            config,
            params
        )
    )

    getFeeHistory = this.#guard(
        'getFeeHistory',
        async (config: Config, params: GetFeeHistoryParameters) => getFeeHistory(
            config,
            params
        )
    )

    watchConnections = this.#guard(
        'watchConnections',
        async (config: Config, params: WatchConnectionsParameters) => watchConnections(
            config,
            params
        )
    )
    switchChain = this.#guard(
        'switchChain',
        async (config: Config, params: SwitchChainParameters) => switchChain(
            config,
            params
        )
    )
    switchAccount = this.#guard(
        'switchAccount',
        async (config: Config, params: SwitchAccountParameters) => switchAccount(
            config,
            params
        )
    )
    watchAccount = this.#guard(
        'watchAccount',
        async (config: Config, params: WatchAccountParameters) => watchAccount(
            config,
            params
        )
    )
    verifyMessage = this.#guard(
        'verifyMessage',
        async (config: Config, params: VerifyMessageParameters) => verifyMessage(
            config,
            params
        )
    )


    #guard<ParamsT, ResultT>(actionName: string, action: (config: Config, params: ParamsT) => Promise<ResultT>): (config: Config, params: ParamsT) => Promise<ResultT> {
        return async (config: Config, params: ParamsT) => {
            try {
                return await action(config, illegalNullsToUndefined(params))
            } catch (error) {
                console.error(`Error ${actionName} (${JSON.stringify(params)}) : `, error)
                throw error
            }
        }
    }
}
