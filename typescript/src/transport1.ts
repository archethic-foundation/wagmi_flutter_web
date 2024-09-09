

export type JSTransport1 = { http: string, ws: string } & JSTransportUrl;
export class JSTransportUrl {
    static type: string = 'JSTransport1'
    http!: string
    ws!: string
}
