export type JSTransport = { type: string } & (JSWebsocketTransport | JSHttpTransport)

export class JSWebsocketTransport {
    static type: string = 'JSWebsocketTransport'
    url!: string
}

export class JSHttpTransport {
    static type: string = 'JSHttpTransport'
    url!: string;
}

export type JSTransportBuilder = (chainId: number) => JSTransport;