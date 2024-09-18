import { Config } from "@wagmi/core"
import { AppKit } from "@web3modal/base"
import * as Web3modal from '@web3modal/wagmi'
import { Chain, Client, createClient, EIP1193RequestFn, http, Transport, webSocket } from "viem"
import { chainsFromIds } from "./chains"
import { JSHttpTransport, JSTransport, JSTransportBuilder, JSWebsocketTransport } from "./transport"

export class JSWeb3Modal {

    defaultWagmiConfig(
        projectId: string,
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
        return Web3modal.defaultWagmiConfig({
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
    }

    createWeb3Modal(
        wagmiConfig: Config,
        projectId: string,
        enableAnalytics?: boolean, // Optional - defaults to your Cloud configuration
        enableOnRamp?: boolean, // Optional - false as default
    ): AppKit {
        return Web3modal.createWeb3Modal({
            wagmiConfig: wagmiConfig,
            projectId: projectId,
            enableAnalytics: enableAnalytics, // Optional - defaults to your Cloud configuration
            enableOnramp: enableOnRamp, // Optional - false as default
        });
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
