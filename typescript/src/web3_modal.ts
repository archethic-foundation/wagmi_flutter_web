import { Config } from "@wagmi/core"
import { AppKit } from "@web3modal/base"
import * as Web3modal from '@web3modal/wagmi'
import { Chain, Client, createClient, EIP1193RequestFn, http, Transport, webSocket } from "viem"
import { chainsFromIds } from "./chains"
import { JSWagmiContext } from "./context"
import { JSHttpTransport, JSTransport, JSTransportBuilder, JSWebsocketTransport } from "./transport"

export class JSWeb3Modal {
    _modalInstance: AppKit | undefined
    _modal() {
        if (this._modalInstance === undefined) {
            throw new Error('Wagmi not initialized. Call `Web3Modal.init` first.')
        }
        return this._modalInstance
    }
    init(
        projectId: string,
        chains: number[],
        enableAnalytics: boolean,
        enableOnRamp: boolean,
        metadata: {
            name: string
            description: string
            url: string
            icons: string[]
        },
        email: boolean,
        socials: [] | undefined,
        showWallets: boolean,
        walletFeatures: boolean,
        transportBuilder: JSTransportBuilder | undefined,
        includeWalletIds: string[] | undefined, // Warning the name is not the same with documentation... https://docs.reown.com/appkit/flutter/core/options
        featuredWalletIds: string[] | undefined,
        excludeWalletIds: string[] | undefined, // Warning the name is not the same with documentation... https://docs.reown.com/appkit/flutter/core/options

    ) {
        JSWagmiContext.instance.config = Web3modal.defaultWagmiConfig({
            chains: chainsFromIds(chains),
            projectId: projectId,
            metadata: metadata,
            auth: {
                email: email,
                socials: socials?.length === 0 ? undefined : socials,
                showWallets: showWallets,
                walletFeatures: walletFeatures
            },
            client: !transportBuilder ? undefined : this.#clientBuilder(transportBuilder),
        })

        this._modalInstance = Web3modal.createWeb3Modal({
            wagmiConfig: JSWagmiContext.instance.config,
            projectId: projectId,
            enableAnalytics: enableAnalytics, // Optional - defaults to your Cloud configuration
            enableOnramp: enableOnRamp, // Optional - false as default
            includeWalletIds: includeWalletIds, // Optional
            featuredWalletIds: featuredWalletIds, // Optional
            excludeWalletIds: excludeWalletIds, // Optional
        })
    }

    // create a dynamic configuration with given key
    createConfig(
        projectId: string,
        configKey: string,
        chains: number[],
        metadata: {
            name: string
            description: string
            url: string
            icons: string[]
        },
        email: boolean,
        socials: [] | undefined,
        showWallets: boolean,
        walletFeatures: boolean,
        transportBuilder: JSTransportBuilder | undefined

    ): Config {
        const config = Web3modal.defaultWagmiConfig({
            chains: chainsFromIds(chains),
            projectId: projectId,
            metadata: metadata,
            auth: {
                email: email,
                socials: socials?.length === 0 ? undefined : socials,
                showWallets: showWallets,
                walletFeatures: walletFeatures
            },
            client: !transportBuilder ? undefined : this.#clientBuilder(transportBuilder),

        })
        JSWagmiContext.instance.setConfig(configKey, config)
        return config
    }



    async open(): Promise<void> {
        await this._modal().open()
    }

    async close(): Promise<void> {
        await this._modal().close()
    }
    #clientBuilder(transportBuilder: JSTransportBuilder): ((parameters: { chain: Chain; }) => Client<Transport<string, Record<string, any>, EIP1193RequestFn>, Chain>) {
        return (parameters: { chain: Chain; }) => {
            const transport = transportBuilder(parameters.chain.id);
            return createClient({
                chain: parameters.chain,
                transport: this.#transportBuilder(transport)
            })
        }
    }

    #transportBuilder(jsTransport: JSTransport): Transport<string, Record<string, any>, EIP1193RequestFn> {
        switch (jsTransport.type) {
            case JSHttpTransport.type:
                return http(jsTransport.url)
            case JSWebsocketTransport.type:
                return webSocket(jsTransport.url)
            default:
                throw new Error(`Unknown Transport type ${typeof jsTransport}`)
        }
    }
}
