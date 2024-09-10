import * as Chains from "@wagmi/core/chains";
export class JSChain {
    static chainFromId(chainId: number): Chains.Chain | undefined {
        for (const chain of Object.values(Chains)) {
            if ('id' in chain) {
                if (chain.id === chainId) {
                    return chain;
                }
            }
        }

        throw new Error(`Chain with id ${chainId} not found`);
    }
}

export function chainsFromIds(chainsIds: number[]): [Chains.Chain, ...Chains.Chain[]] {
    const jsChainsRaw = chainsIds
        .map((chainString) => JSChain.chainFromId(chainString))
        .filter((value) => value !== undefined)
    if (jsChainsRaw.length == 0) throw new Error('`chains` must contain at least one element')

    return [
        jsChainsRaw[0],
        ...jsChainsRaw.slice(1),
    ]
}

