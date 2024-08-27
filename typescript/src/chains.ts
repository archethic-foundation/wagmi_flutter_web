import { Chain, mainnet, polygonAmoy, sepolia } from "@wagmi/core/chains"

export class JSChain {
    static chainFromString(chainString: string): Chain | undefined {
        switch (chainString) {
            case 'mainnet': return mainnet
            case 'sepolia': return sepolia
            case 'polygonAmoy': return polygonAmoy
        }
    }
}

export function chainsFromStrings(chainsStrings: string[]): [Chain, ...Chain[]] {
    const jsChainsRaw = chainsStrings
        .map((chainString) => JSChain.chainFromString(chainString))
        .filter((value) => value !== undefined)
    if (jsChainsRaw.length == 0) throw new Error('`chains` must contain at least one element')

    return [
        jsChainsRaw[0],
        ...jsChainsRaw.slice(1),
    ]
}

