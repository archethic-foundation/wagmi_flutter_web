import { Config } from "@wagmi/core"

export class JSWagmiContext {
    static #instance: JSWagmiContext | undefined


    #config: Config | undefined
    #transportOnlyConfig: Config | undefined

    private constructor() { }

    public static get instance(): JSWagmiContext {
        if (JSWagmiContext.#instance == undefined) {
            JSWagmiContext.#instance = new JSWagmiContext()
        }
        return JSWagmiContext.#instance
    }

    public get config() {
        if (this.#config === undefined) {
            throw new Error('Wagmi not initialized. Call `Web3Modal.init` first.')
        }
        return this.#config
    }

    public set config(config: Config) {
        this.#config = config
    }

    // This is second config
    public get config2() {
        if (this.#transportOnlyConfig === undefined) {
            throw new Error('Wagmi not initialized. Call `Web3Modal.init` first.')
        }
        return this.#transportOnlyConfig
    }
    public set transportOnlyConfig(config: Config) {
        this.#transportOnlyConfig = config
    }
}