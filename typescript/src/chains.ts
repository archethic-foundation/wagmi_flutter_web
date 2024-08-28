import * as Chains from "@wagmi/core/chains";
export class JSChain {
    static chainFromString(chainString: string): Chains.Chain | undefined {
        switch (chainString) {
            case 'mainnet': return Chains.mainnet;
            case 'goerli': return Chains.goerli;
            case 'optimism': return Chains.optimism;
            case 'flare': return Chains.flare;
            case 'songbirdTestnet': return Chains.songbirdTestnet;
            case 'songbird': return Chains.songbird;
            case 'cronos': return Chains.cronos;
            case 'rootstock': return Chains.rootstock;
            case 'rootstockTestnet': return Chains.rootstockTestnet;
            case 'telos': return Chains.telos;
            case 'telosTestnet': return Chains.telosTestnet;
            case 'lukso': return Chains.lukso;
            case 'darwinia': return Chains.darwinia;
            case 'xdc': return Chains.xdc;
            case 'xdcTestnet': return Chains.xdcTestnet;
            case 'bsc': return Chains.bsc;
            case 'syscoin': return Chains.syscoin;
            case 'classic': return Chains.classic;
            case 'okc': return Chains.okc;
            case 'confluxESpaceTestnet': return Chains.confluxESpaceTestnet;
            case 'meter': return Chains.meter;
            case 'meterTestnet': return Chains.meterTestnet;
            case 'bscTestnet': return Chains.bscTestnet;
            case 'gnosis': return Chains.gnosis;
            case 'shibarium': return Chains.shibarium;
            case 'flareTestnet': return Chains.flareTestnet;
            case 'fuse': return Chains.fuse;
            case 'fuseSparknet': return Chains.fuseSparknet;
            case 'polygon': return Chains.polygon;
            case 'shimmer': return Chains.shimmer;
            case 'manta': return Chains.manta;
            case 'x1Testnet': return Chains.x1Testnet;
            case 'xLayerTestnet': return Chains.xLayerTestnet;
            case 'xLayer': return Chains.xLayer;
            case 'bitTorrent': return Chains.bitTorrent;
            case 'edgelessTestnet': return Chains.edgelessTestnet;
            case 'opBNB': return Chains.opBNB;
            case 'nexilix': return Chains.nexilix;
            case 'plinga': return Chains.plinga;
            case 'oasys': return Chains.oasys;
            case 'fantom': return Chains.fantom;
            case 'fraxtal': return Chains.fraxtal;
            case 'kroma': return Chains.kroma;
            case 'boba': return Chains.boba;
            case 'hedera': return Chains.hedera;
            case 'hederaTestnet': return Chains.hederaTestnet;
            case 'hederaPreviewnet': return Chains.hederaPreviewnet;
            case 'filecoin': return Chains.filecoin;
            case 'kcc': return Chains.kcc;
            case 'zkSync': return Chains.zkSync;
            case 'cronosTestnet': return Chains.cronosTestnet;
            case 'pulsechain': return Chains.pulsechain;
            case 'optimismGoerli': return Chains.optimismGoerli;
            case 'pgn': return Chains.pgn;
            case 'areonNetworkTestnet': return Chains.areonNetworkTestnet;
            case 'areonNetwork': return Chains.areonNetwork;
            case 'flowTestnet': return Chains.flowTestnet;
            case 'rollux': return Chains.rollux;
            case 'metachain': return Chains.metachain;
            case 'astar': return Chains.astar;
            case 'mandala': return Chains.mandala;
            case 'metisGoerli': return Chains.metisGoerli;
            case 'flowPreviewnet': return Chains.flowPreviewnet;
            case 'karura': return Chains.karura;
            case 'flowMainnet': return Chains.flowMainnet;
            case 'acala': return Chains.acala;
            case 'taraxa': return Chains.taraxa;
            case 'taraxaTestnet': return Chains.taraxaTestnet;
            case 'wanchain': return Chains.wanchain;
            case 'modeTestnet': return Chains.modeTestnet;
            case 'pulsechainV4': return Chains.pulsechainV4;
            case 'thunderTestnet': return Chains.thunderTestnet;
            case 'wanchainTestnet': return Chains.wanchainTestnet;
            case 'zoraTestnet': return Chains.zoraTestnet;
            case 'klaytnBaobab': return Chains.klaytnBaobab;
            case 'ektaTestnet': return Chains.ektaTestnet;
            case 'bscGreenfield': return Chains.bscGreenfield;
            case 'bitTorrentTestnet': return Chains.bitTorrentTestnet;
            case 'confluxESpace': return Chains.confluxESpace;
            case 'bronosTestnet': return Chains.bronosTestnet;
            case 'bronos': return Chains.bronos;
            case 'shimmerTestnet': return Chains.shimmerTestnet;
            case 'metis': return Chains.metis;
            case 'polygonZkEvm': return Chains.polygonZkEvm;
            case 'wemix': return Chains.wemix;
            case 'wemixTestnet': return Chains.wemixTestnet;
            case 'coreDao': return Chains.coreDao;
            case 'defichainEvm': return Chains.defichainEvm;
            case 'defichainEvmTestnet': return Chains.defichainEvmTestnet;
            case 'moonbeamDev': return Chains.moonbeamDev;
            case 'moonbeam': return Chains.moonbeam;
            case 'moonriver': return Chains.moonriver;
            case 'moonbaseAlpha': return Chains.moonbaseAlpha;
            case 'localhost': return Chains.localhost;
            case 'polygonZkEvmTestnet': return Chains.polygonZkEvmTestnet;
            case 'metachainIstanbul': return Chains.metachainIstanbul;
            case 'tenet': return Chains.tenet;
            case 'gobi': return Chains.gobi;
            case 'mintSepoliaTestnet': return Chains.mintSepoliaTestnet;
            case 'reyaNetwork': return Chains.reyaNetwork;
            case 'lightlinkPhoenix': return Chains.lightlinkPhoenix;
            case 'lightlinkPegasus': return Chains.lightlinkPegasus;
            case 'ekta': return Chains.ekta;
            case 'dogechain': return Chains.dogechain;
            case 'telcoinTestnet': return Chains.telcoinTestnet;
            case 'ronin': return Chains.ronin;
            case 'edgeware': return Chains.edgeware;
            case 'saigon': return Chains.saigon;
            case 'edgewareTestnet': return Chains.edgewareTestnet;
            case 'edgeless': return Chains.edgeless;
            case 'kavaTestnet': return Chains.kavaTestnet;
            case 'kava': return Chains.kava;
            case 'rss3Sepolia': return Chains.rss3Sepolia;
            case 'kromaSepolia': return Chains.kromaSepolia;
            case 'polygonZkEvmCardona': return Chains.polygonZkEvmCardona;
            case 'fraxtalTestnet': return Chains.fraxtalTestnet;
            case 'inEVM': return Chains.inEVM;
            case 'morphSepolia': return Chains.morphSepolia;
            case 'filecoinHyperspace': return Chains.filecoinHyperspace;
            case 'crossbell': return Chains.crossbell;
            case 'astarZkEVM': return Chains.astarZkEVM;
            case 'apexTestnet': return Chains.apexTestnet;
            case 'fantomTestnet': return Chains.fantomTestnet;
            case 'oasisTestnet': return Chains.oasisTestnet;
            case 'merlin': return Chains.merlin;
            case 'luksoTestnet': return Chains.luksoTestnet;
            case 'liskSepolia': return Chains.liskSepolia;
            case 'nexi': return Chains.nexi;
            case 'beam': return Chains.beam;
            case 'iotex': return Chains.iotex;
            case 'iotexTestnet': return Chains.iotexTestnet;
            case 'mevTestnet': return Chains.mevTestnet;
            case 'bxnTestnet': return Chains.bxnTestnet;
            case 'bxn': return Chains.bxn;
            case 'mantle': return Chains.mantle;
            case 'mantleTestnet': return Chains.mantleTestnet;
            case 'mantleSepoliaTestnet': return Chains.mantleSepoliaTestnet;
            case 'bahamut': return Chains.bahamut;
            case 'opBNBTestnet': return Chains.opBNBTestnet;
            case 'syscoinTestnet': return Chains.syscoinTestnet;
            case 'zetachain': return Chains.zetachain;
            case 'zetachainAthensTestnet': return Chains.zetachainAthensTestnet;
            case 'eon': return Chains.eon;
            case 'mev': return Chains.mev;
            case 'cyber': return Chains.cyber;
            case 'canto': return Chains.canto;
            case 'shardeumSphinx': return Chains.shardeumSphinx;
            case 'klaytn': return Chains.klaytn;
            case 'base': return Chains.base;
            case 'jbc': return Chains.jbc;
            case 'evmosTestnet': return Chains.evmosTestnet;
            case 'evmos': return Chains.evmos;
            case 'oortMainnetDev': return Chains.oortMainnetDev;
            case 'gnosisChiado': return Chains.gnosisChiado;
            case 'haqqMainnet': return Chains.haqqMainnet;
            case 'bevmMainnet': return Chains.bevmMainnet;
            case 'fibo': return Chains.fibo;
            case 'rss3': return Chains.rss3;
            case 'beamTestnet': return Chains.beamTestnet;
            case 'immutableZkEvm': return Chains.immutableZkEvm;
            case 'phoenix': return Chains.phoenix;
            case 'immutableZkEvmTestnet': return Chains.immutableZkEvmTestnet;
            case 'eosTestnet': return Chains.eosTestnet;
            case 'holesky': return Chains.holesky;
            case 'eos': return Chains.eos;
            case 'sapphire': return Chains.sapphire;
            case 'sapphireTestnet': return Chains.sapphireTestnet;
            case 'dreyerxMainnet': return Chains.dreyerxMainnet;
            case 'anvil': return Chains.anvil;
            case 'foundry': return Chains.foundry;
            case 'hardhat': return Chains.hardhat;
            case 'zilliqa': return Chains.zilliqa;
            case 'zilliqaTestnet': return Chains.zilliqaTestnet;
            case 'mode': return Chains.mode;
            case 'qMainnet': return Chains.qMainnet;
            case 'qTestnet': return Chains.qTestnet;
            case 'arbitrum': return Chains.arbitrum;
            case 'arbitrumNova': return Chains.arbitrumNova;
            case 'celo': return Chains.celo;
            case 'zkFair': return Chains.zkFair;
            case 'avalancheFuji': return Chains.avalancheFuji;
            case 'avalanche': return Chains.avalanche;
            case 'zkFairTestnet': return Chains.zkFairTestnet;
            case 'celoAlfajores': return Chains.celoAlfajores;
            case 'yooldoVerse': return Chains.yooldoVerse;
            case 'yooldoVerseTestnet': return Chains.yooldoVerseTestnet;
            case 'dodochainTestnet': return Chains.dodochainTestnet;
            case 'dfk': return Chains.dfk;
            case 'haqqTestedge2': return Chains.haqqTestedge2;
            case 'rolluxTestnet': return Chains.rolluxTestnet;
            case 'pgnTestnet': return Chains.pgnTestnet;
            case 'lineaGoerli': return Chains.lineaGoerli;
            case 'lineaTestnet': return Chains.lineaTestnet;
            case 'lineaSepolia': return Chains.lineaSepolia;
            case 'linea': return Chains.linea;
            case 'fantomSonicTestnet': return Chains.fantomSonicTestnet;
            case 'polygonMumbai': return Chains.polygonMumbai;
            case 'polygonAmoy': return Chains.polygonAmoy;
            case 'berachainTestnet': return Chains.berachainTestnet;
            case 'blast': return Chains.blast;
            case 'baseGoerli': return Chains.baseGoerli;
            case 'baseSepolia': return Chains.baseSepolia;
            case 'spicy': return Chains.spicy;
            case 'chiliz': return Chains.chiliz;
            case 'jbcTestnet': return Chains.jbcTestnet;
            case 'vechain': return Chains.vechain;
            case 'stratis': return Chains.stratis;
            case 'etherlinkTestnet': return Chains.etherlinkTestnet;
            case 'taikoTestnetSepolia': return Chains.taikoTestnetSepolia;
            case 'taikoJolnir': return Chains.taikoJolnir;
            case 'taikoKatla': return Chains.taikoKatla;
            case 'taikoHekla': return Chains.taikoHekla;
            case 'btrTestnet': return Chains.btrTestnet;
            case 'btr': return Chains.btr;
            case 'auroria': return Chains.auroria;
            case 'filecoinCalibration': return Chains.filecoinCalibration;
            case 'arbitrumGoerli': return Chains.arbitrumGoerli;
            case 'arbitrumSepolia': return Chains.arbitrumSepolia;
            case 'scrollSepolia': return Chains.scrollSepolia;
            case 'scroll': return Chains.scroll;
            case 'bearNetworkChainMainnet': return Chains.bearNetworkChainMainnet;
            case 'seiDevnet': return Chains.seiDevnet;
            case 'bearNetworkChainTestnet': return Chains.bearNetworkChainTestnet;
            case 'zhejiang': return Chains.zhejiang;
            case 'playfiAlbireo': return Chains.playfiAlbireo;
            case 'mantaTestnet': return Chains.mantaTestnet;
            case 'mantaSepoliaTestnet': return Chains.mantaSepoliaTestnet;
            case 'astarZkyoto': return Chains.astarZkyoto;
            case 'zora': return Chains.zora;
            case 'sepolia': return Chains.sepolia;
            case 'optimismSepolia': return Chains.optimismSepolia;
            case 'ancient8Sepolia': return Chains.ancient8Sepolia;
            case 'skaleNebulaTestnet': return Chains.skaleNebulaTestnet;
            case 'otimDevnet': return Chains.otimDevnet;
            case 'cyberTestnet': return Chains.cyberTestnet;
            case 'plumeTestnet': return Chains.plumeTestnet;
            case 'blastSepolia': return Chains.blastSepolia;
            case 'neonDevnet': return Chains.neonDevnet;
            case 'neonMainnet': return Chains.neonMainnet;
            case 'skaleRazor': return Chains.skaleRazor;
            case 'skaleBlockBrawlers': return Chains.skaleBlockBrawlers;
            case 'degen': return Chains.degen;
            case 'ancient8': return Chains.ancient8;
            case 'skaleCalypsoTestnet': return Chains.skaleCalypsoTestnet;
            case 'zoraSepolia': return Chains.zoraSepolia;
            case 'skaleTitanTestnet': return Chains.skaleTitanTestnet;
            case 'skaleCryptoBlades': return Chains.skaleCryptoBlades;
            case 'skaleCryptoColosseum': return Chains.skaleCryptoColosseum;
            case 'skaleHumanProtocol': return Chains.skaleHumanProtocol;
            case 'aurora': return Chains.aurora;
            case 'auroraTestnet': return Chains.auroraTestnet;
            case 'skaleTitan': return Chains.skaleTitan;
            case 'skaleEuropaTestnet': return Chains.skaleEuropaTestnet;
            case 'skaleNebula': return Chains.skaleNebula;
            case 'skaleCalypso': return Chains.skaleCalypso;
            case 'harmonyOne': return Chains.harmonyOne;
            case 'skaleEuropa': return Chains.skaleEuropa;
            case 'skaleExorde': return Chains.skaleExorde;
            case 'palmTestnet': return Chains.palmTestnet;
            case 'palm': return Chains.palm;
            case 'kakarotSepolia': return Chains.kakarotSepolia;
            default: return undefined;
        }
    }
}

export function chainsFromStrings(chainsStrings: string[]): [Chains.Chain, ...Chains.Chain[]] {
    const jsChainsRaw = chainsStrings
        .map((chainString) => JSChain.chainFromString(chainString))
        .filter((value) => value !== undefined)
    if (jsChainsRaw.length == 0) throw new Error('`chains` must contain at least one element')

    return [
        jsChainsRaw[0],
        ...jsChainsRaw.slice(1),
    ]
}
