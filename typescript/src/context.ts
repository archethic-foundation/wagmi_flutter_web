import { Config } from "@wagmi/core"

export class JSWagmiContext {
    static #instance: JSWagmiContext | undefined
    private configMap: Map<string, Config>;

    #config: Config | undefined

    private constructor() {
        this.configMap = new Map<string, Config>();
    }

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

    // Method to set a configuration
    public setConfig(key: string, config: Config): void {
        // log key and config
        this.configMap.set(key, config);
    }

    // Method to get a configuration
    public getConfig(key: string): Config | undefined {
        return this.configMap.get(key);
    }
}