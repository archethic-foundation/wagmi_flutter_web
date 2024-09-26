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
    GetWalletClientParameters,
    DeployContractParameters,
    WatchAssetParameters,
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
    getWalletClient,
    deployContract,
    watchAsset,
} from "@wagmi/core";
import { InvalidAddressError } from "viem";
import { JSWagmiContext } from "./context";
import { illegalNullsToUndefined } from "./parameters_utils";

export class JSWagmiCore {
    getAccount = function () {
        return getAccount(JSWagmiContext.instance.config);
    }

    getChainId = function () {
        return getChainId(JSWagmiContext.instance.config);
    }
    getChains = function () {
        return getChains(JSWagmiContext.instance.config);
    }


    getBlockNumber = this.#guard(
        'getBlockNumber',
        async (configKey: string, params: GetBlockNumberParameters) => getBlockNumber(
            this.getConfig(configKey),
            params
        )
    )

    getGasPrice = this.#guard(
        'getGasPrice',
        async (configKey: string, params: GetGasPriceParameters) => getGasPrice(
            this.getConfig(configKey),
            params
        )
    )

    getBalance = this.#guard(
        'getBalance',
        async (configKey: string, params: GetBalanceParameters) => {
            if (!params.address || !/^0x[a-fA-F0-9]{40}$/.test(params.address)) {
                console.error("Invalid address provided")
                throw new InvalidAddressError({ address: params.address })
            }
            return getBalance(
                this.getConfig(configKey),
                params
            );
        }
    )
    getBlock = this.#guard(
        'getBlock',
        async (configKey: string, params: GetBlockParameters) => {
            return getBlock(
                this.getConfig(configKey),
                params
            );
        }
    )

    getBlockTransactionCount = this.#guard(
        'getBlockTransactionCount',
        async (configKey: string, params: GetBlockTransactionCountParameters) => getBlockTransactionCount(
            this.getConfig(configKey),
            params
        )
    )

    getTransaction = this.#guard(
        'getTransaction',
        async (configKey: string, params: GetTransactionParameters) => getTransaction(
            this.getConfig(configKey),
            params
        )
    )

    call = this.#guard(
        'call',
        async (configKey: string, params: CallParameters) => call(
            this.getConfig(configKey),
            params
        )
    )

    getTransactionConfirmations = this.#guard(
        'getTransactionConfirmations',
        async (configKey: string, params: GetTransactionConfirmationsParameters) => getTransactionConfirmations(
            this.getConfig(configKey),
            params
        )
    )

    getTransactionCount = this.#guard(
        'getTransactionCount',
        async (configKey: string, params: GetTransactionCountParameters) => {
            if (!params.address || !/^0x[a-fA-F0-9]{40}$/.test(params.address)) {
                console.error("Invalid address provided")
                throw new InvalidAddressError({ address: params.address })
            }

            return getTransactionCount(
                this.getConfig(configKey),
                params
            )
        }
    )

    getToken = this.#guard(
        'getToken',
        async (configKey: string, params: GetTokenParameters) => getToken(
            this.getConfig(configKey),
            params
        )
    )


    signMessage = this.#guard(
        'signMessage',
        async (configKey: string, params: SignMessageParameters) => {
            if (!params.message) {
                console.error("No message provided")
                return null
            }
            return signMessage(
                this.getConfig(configKey),
                params
            )
        }
    )

    readContract = this.#guard(
        'readContract',
        async (configKey: string, params: ReadContractParameters) => readContract(
            this.getConfig(configKey),
            params
        )
    )

    readContracts = this.#guard(
        'readContracts',
        async (configKey: string, params: ReadContractsParameters) => readContracts(
            this.getConfig(configKey),
            params
        )
    )

    getTransactionReceipt = this.#guard(
        'getTransactionReceipt',
        async (configKey: string, params: GetTransactionReceiptParameters) => getTransactionReceipt(
            this.getConfig(configKey),
            params
        )
    )

    sendTransaction = this.#guard(
        'sendTransaction',
        async (configKey: string, params: SendTransactionParameters) => sendTransaction(
            this.getConfig(configKey),
            params
        )
    )

    watchChainId = this.#guard(
        'watchChainId',
        async (configKey: string, params: WatchChainIdParameters) => watchChainId(
            this.getConfig(configKey),
            params
        )
    )

    watchContractEvent = this.#guard(
        'watchContractEvent',
        async (configKey: string, params: WatchContractEventParameters) => watchContractEvent(
            this.getConfig(configKey),
            params
        )
    )

    writeContract = this.#guard(
        'writeContract',
        async (configKey: string, params: WriteContractParameters) => writeContract(
            this.getConfig(configKey),
            params
        )
    )

    estimateGas = this.#guard(
        'estimateGas',
        async (configKey: string, params: EstimateGasParameters) => estimateGas(
            this.getConfig(configKey),
            params
        )
    )

    estimateFeesPerGas = this.#guard(
        'estimateFeesPerGas',
        async (configKey: string, params: EstimateFeesPerGasParameters) => estimateFeesPerGas(
            this.getConfig(configKey),
            params
        )
    )

    estimateMaxPriorityFeePerGas = this.#guard(
        'estimateMaxPriorityFeePerGas',
        async (configKey: string, params: EstimateMaxPriorityFeePerGasParameters) => estimateMaxPriorityFeePerGas(
            this.getConfig(configKey),
            params
        )

    )

    getBytecode = this.#guard(
        'getBytecode',
        async (configKey: string, params: GetBytecodeParameters) => getBytecode(
            this.getConfig(configKey),
            params
        )
    )

    disconnect = this.#guard(
        'disconnect',
        async (configKey: string, params: DisconnectParameters) => disconnect(
            this.getConfig(configKey),
            params
        )
    )

    waitForTransactionReceipt = this.#guard(
        'waitForTransactionReceipt',
        async (configKey: string, params: WaitForTransactionReceiptParameters) => waitForTransactionReceipt(
            this.getConfig(configKey),
            params
        )
    )

    getFeeHistory = this.#guard(
        'getFeeHistory',
        async (configKey: string, params: GetFeeHistoryParameters) => getFeeHistory(
            this.getConfig(configKey),
            params
        )
    )

    watchConnections = this.#guard(
        'watchConnections',
        async (configKey: string, params: WatchConnectionsParameters) => watchConnections(
            this.getConfig(configKey),
            params
        )
    )
    switchChain = this.#guard(
        'switchChain',
        async (configKey: string, params: SwitchChainParameters) => switchChain(
            this.getConfig(configKey),
            params
        )
    )
    switchAccount = this.#guard(
        'switchAccount',
        async (configKey: string, params: SwitchAccountParameters) => switchAccount(
            this.getConfig(configKey),
            params
        )
    )
    watchAccount = this.#guard(
        'watchAccount',
        async (configKey: string, params: WatchAccountParameters) => watchAccount(
            this.getConfig(configKey),
            params
        )
    )
    verifyMessage = this.#guard(
        'verifyMessage',
        async (configKey: string, params: VerifyMessageParameters) => verifyMessage(
            this.getConfig(configKey),
            params
        )
    )
    getWalletClient = this.#guard(
        'getWalletClient',
        async (configKey: string, params: GetWalletClientParameters) => {
            return await getWalletClient(
                this.getConfig(configKey),
                params
            );
        }
    )
    deployContract = this.#guard(
        'deployContract',
        async (configKey: string, params: DeployContractParameters) => {
            return await deployContract(
                this.getConfig(configKey),
                params
            );
        }
    )
    watchAsset = this.#guard(
        'watchAsset',
        async (configKey: string, params: WatchAssetParameters) => {
            return await watchAsset(
                this.getConfig(configKey),
                params
            );
        }
    )

    // create common get config method
    getConfig(configKey: string): Config {
        if (configKey === 'default' || JSWagmiContext.instance.getConfig(configKey) === undefined) {
            return JSWagmiContext.instance.config;
        } else {
            const config = JSWagmiContext.instance.getConfig(configKey);
            if (!config) {
                throw new Error(`Config for key '${configKey}' is undefined`);
            }
            return config;
        }
    }


    #guard<ParamsT, ResultT>(actionName: string, action: (configKey: string, params: ParamsT) => Promise<ResultT>): (configKey: string, params: ParamsT) => Promise<ResultT> {
        return async (configKey: string, params: ParamsT) => {
            try {
                return await action(configKey, illegalNullsToUndefined(params))
            } catch (error) {
                console.error(`Error ${actionName} (${JSON.stringify(params)}) : `, error)
                throw error
            }
        }
    }
}
