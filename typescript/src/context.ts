import { Config } from "@wagmi/core"

export class JSWagmiContext {
    static #instance: JSWagmiContext | undefined


    #config: Config | undefined
    #config2: Config | undefined

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
        if (this.#config2 === undefined) {
            throw new Error('Wagmi not initialized. Call `Web3Modal.init` first.')
        }
        return this.#config2
    }
    public set config2(config: Config) {
        this.#config2 = config
    }
}