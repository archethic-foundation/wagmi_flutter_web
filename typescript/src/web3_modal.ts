import { AppKit } from "@web3modal/base"
import * as Web3modal from '@web3modal/wagmi'
import { Chain, Client, createClient, EIP1193RequestFn, http, fallback, Transport, webSocket } from "viem"
import { chainsFromStrings } from "./chains"
import { JSWagmiContext } from "./context"
import { JSHttpTransport, JSTransport, JSTransportBuilder, JSWebsocketTransport } from "./transport"
import { JSTransport1, JSTransportUrl } from "./transport1"

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
        chains: string[],
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
        transport: JSTransport1[] | undefined,
    ) {
        JSWagmiContext.instance.config = Web3modal.defaultWagmiConfig({
            chains: chainsFromStrings(chains),
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

        if (typeof (transport) !== 'undefined' && transport?.length > 0 && chains.length === transport.length) {
            // get all chain ids
            const chainIds = chainsFromStrings(chains).map(c => c.id);
            let transports: { [key: string]: Transport<string, Record<string, any>, EIP1193RequestFn> } = {};

            for (let index = 0; index < chainIds.length; index++) {

                if (transport[index].http !== null && transport[index].ws !== null) {
                    transports[chainIds[index]] = fallback([
                        http(transport[index].http),
                        webSocket(transport[index].ws)
                    ]);
                } else if (transport[index].http !== null) {
                    transports[chainIds[index]] = http(transport[index].http);
                } else if (transport[index].ws !== null) {
                    transports[chainIds[index]] = webSocket(transport[index].ws);
                }
            }
            JSWagmiContext.instance.config2 = Web3modal.defaultWagmiConfig({
                chains: chainsFromStrings(chains),
                projectId: projectId,
                metadata: metadata,
                transports: transports,
            })
        }

        this._modalInstance = Web3modal.createWeb3Modal({
            wagmiConfig: JSWagmiContext.instance.config,
            projectId: projectId,
            enableAnalytics: enableAnalytics, // Optional - defaults to your Cloud configuration
            enableOnramp: enableOnRamp, // Optional - false as default
        })
    }

    open() {
        return this._modal().open()
    }

    close() {
        return this._modal().close()
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
