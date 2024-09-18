import 'package:wagmi_flutter_web/src/models/chain_block_explorer.dart';
import 'package:wagmi_flutter_web/src/models/chain_contract.dart';
import 'package:wagmi_flutter_web/src/models/chain_fees.dart';
import 'package:wagmi_flutter_web/src/models/chain_formatters.dart';
import 'package:wagmi_flutter_web/src/models/chain_native_currency.dart';
import 'package:wagmi_flutter_web/src/models/chain_rpc_urls.dart';
import 'package:wagmi_flutter_web/src/models/chain_serializers.dart';

/// Chains identifiers.
///
/// Those finalants are used to match
/// chains predefined in [Viem](https://viem.sh/docs/chains/introduction.html)
class Chain {
  const Chain({
    required this.id,
    required this.name,
    this.nativeCurrency,
    this.rpcUrls,
    this.blockExplorers,
    this.sourceId,
    this.testnet,
    this.custom,
    this.fees,
    this.formatters,
    this.serializers,
    this.contracts,
  });

  factory Chain.fromMap(Map<String, dynamic> map) {
    return Chain(
      id: map['id'],
      name: map['name'],
      nativeCurrency: map['nativeCurrency'] != null
          ? ChainNativeCurrency.fromMap(map['nativeCurrency'])
          : null,
      rpcUrls: map['rpcUrls'] != null
          ? (map['rpcUrls'] as Map<String, dynamic>).map(
              (key, value) {
                return MapEntry(key, ChainRpcUrls.fromMap(value));
              },
            )
          : null,
      blockExplorers: map['blockExplorers'] != null
          ? (map['blockExplorers'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(key, ChainBlockExplorer.fromMap(value)),
            )
          : null,
      contracts: map['contracts'] != null
          ? (map['contracts'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(key, ChainContract.fromMap(value)),
            )
          : null,
      // ignore: prefer_if_null_operators
      sourceId: map['sourceId'] != null ? map['sourceId'] : null,
      // ignore: prefer_if_null_operators
      testnet: map['testnet'] != null ? map['testnet'] : null,
      // ignore: prefer_if_null_operators
      custom: map['custom'] != null ? map['custom'] : null,
      fees: map['fees'] != null ? ChainFees.fromMap(map['fees']) : null,
      formatters: map['formatters'] != null && map['formatters'] is Map
          ? ChainFormatters.fromMap(map['formatters'])
          : null,
      serializers: map['serializers'] != null && map['serializers'] is Map
          ? ChainSerializers.fromMap(map['serializers'])
          : null,
    );
  }

  final int id;
  final String name;
  final Map<String, ChainBlockExplorer>? blockExplorers;
  final Map<String, ChainContract>? contracts;
  final ChainNativeCurrency? nativeCurrency;
  final Map<String, ChainRpcUrls>? rpcUrls;
  final int? sourceId;
  final bool? testnet;
  final Map<String, dynamic>? custom;
  final ChainFees? fees;
  final ChainFormatters? formatters;
  final ChainSerializers? serializers;

  static const mainnet = Chain(id: 1, name: 'mainnet');
  static const goerli = Chain(id: 5, name: 'goerli');
  static const optimism = Chain(id: 10, name: 'optimism');
  static const flare = Chain(id: 14, name: 'flare');
  static const songbirdTestnet = Chain(id: 16, name: 'songbirdTestnet');
  static const songbird = Chain(id: 19, name: 'songbird');
  static const cronos = Chain(id: 25, name: 'cronos');
  static const rootstock = Chain(id: 30, name: 'rootstock');
  static const rootstockTestnet = Chain(id: 31, name: 'rootstockTestnet');
  static const telos = Chain(id: 40, name: 'telos');
  static const telosTestnet = Chain(id: 41, name: 'telosTestnet');
  static const lukso = Chain(id: 42, name: 'lukso');
  static const darwinia = Chain(id: 46, name: 'darwinia');
  static const xdc = Chain(id: 50, name: 'xdc');
  static const xdcTestnet = Chain(id: 51, name: 'xdcTestnet');
  static const bsc = Chain(id: 56, name: 'bsc');
  static const syscoin = Chain(id: 57, name: 'syscoin');
  static const classic = Chain(id: 61, name: 'classic');
  static const okc = Chain(id: 66, name: 'okc');
  static const confluxESpaceTestnet =
      Chain(id: 71, name: 'confluxESpaceTestnet');
  static const meter = Chain(id: 82, name: 'meter');
  static const meterTestnet = Chain(id: 83, name: 'meterTestnet');
  static const bscTestnet = Chain(id: 97, name: 'bscTestnet');
  static const gnosis = Chain(id: 100, name: 'gnosis');
  static const shibarium = Chain(id: 109, name: 'shibarium');
  static const flareTestnet = Chain(id: 114, name: 'flareTestnet');
  static const fuse = Chain(id: 122, name: 'fuse');
  static const fuseSparknet = Chain(id: 123, name: 'fuseSparknet');
  static const polygon = Chain(id: 137, name: 'polygon');
  static const shimmer = Chain(id: 148, name: 'shimmer');
  static const manta = Chain(id: 169, name: 'manta');
  static const x1Testnet = Chain(id: 195, name: 'x1Testnet');
  static const xLayerTestnet = Chain(id: 195, name: 'xLayerTestnet');
  static const xLayer = Chain(id: 196, name: 'xLayer');
  static const bitTorrent = Chain(id: 199, name: 'bitTorrent');
  static const edgelessTestnet = Chain(id: 202, name: 'edgelessTestnet');
  static const opBNB = Chain(id: 204, name: 'opBNB');
  static const nexilix = Chain(id: 240, name: 'nexilix');
  static const plinga = Chain(id: 242, name: 'plinga');
  static const oasys = Chain(id: 248, name: 'oasys');
  static const fantom = Chain(id: 250, name: 'fantom');
  static const fraxtal = Chain(id: 252, name: 'fraxtal');
  static const kroma = Chain(id: 255, name: 'kroma');
  static const boba = Chain(id: 288, name: 'boba');
  static const hedera = Chain(id: 295, name: 'hedera');
  static const hederaTestnet = Chain(id: 296, name: 'hederaTestnet');
  static const hederaPreviewnet = Chain(id: 297, name: 'hederaPreviewnet');
  static const filecoin = Chain(id: 314, name: 'filecoin');
  static const kcc = Chain(id: 321, name: 'kcc');
  static const zkSync = Chain(id: 324, name: 'zkSync');
  static const cronosTestnet = Chain(id: 338, name: 'cronosTestnet');
  static const pulsechain = Chain(id: 369, name: 'pulsechain');
  static const optimismGoerli = Chain(id: 420, name: 'optimismGoerli');
  static const pgn = Chain(id: 424, name: 'pgn');
  static const areonNetworkTestnet =
      Chain(id: 462, name: 'areonNetworkTestnet');
  static const areonNetwork = Chain(id: 463, name: 'areonNetwork');
  static const flowTestnet = Chain(id: 545, name: 'flowTestnet');
  static const rollux = Chain(id: 570, name: 'rollux');
  static const metachain = Chain(id: 571, name: 'metachain');
  static const astar = Chain(id: 592, name: 'astar');
  static const mandala = Chain(id: 595, name: 'mandala');
  static const metisGoerli = Chain(id: 599, name: 'metisGoerli');
  static const flowPreviewnet = Chain(id: 646, name: 'flowPreviewnet');
  static const karura = Chain(id: 686, name: 'karura');
  static const flowMainnet = Chain(id: 747, name: 'flowMainnet');
  static const acala = Chain(id: 787, name: 'acala');
  static const taraxa = Chain(id: 841, name: 'taraxa');
  static const taraxaTestnet = Chain(id: 842, name: 'taraxaTestnet');
  static const wanchain = Chain(id: 888, name: 'wanchain');
  static const modeTestnet = Chain(id: 919, name: 'modeTestnet');
  static const pulsechainV4 = Chain(id: 943, name: 'pulsechainV4');
  static const thunderTestnet = Chain(id: 997, name: 'thunderTestnet');
  static const wanchainTestnet = Chain(id: 999, name: 'wanchainTestnet');
  static const zoraTestnet = Chain(id: 999, name: 'zoraTestnet');
  static const klaytnBaobab = Chain(id: 1001, name: 'klaytnBaobab');
  static const ektaTestnet = Chain(id: 1004, name: 'ektaTestnet');
  static const bscGreenfield = Chain(id: 1017, name: 'bscGreenfield');
  static const bitTorrentTestnet = Chain(id: 1028, name: 'bitTorrentTestnet');
  static const confluxESpace = Chain(id: 1030, name: 'confluxESpace');
  static const bronosTestnet = Chain(id: 1038, name: 'bronosTestnet');
  static const bronos = Chain(id: 1039, name: 'bronos');
  static const shimmerTestnet = Chain(id: 1073, name: 'shimmerTestnet');
  static const metis = Chain(id: 1088, name: 'metis');
  static const polygonZkEvm = Chain(id: 1101, name: 'polygonZkEvm');
  static const wemix = Chain(id: 1111, name: 'wemix');
  static const wemixTestnet = Chain(id: 1112, name: 'wemixTestnet');
  static const coreDao = Chain(id: 1116, name: 'coreDao');
  static const defichainEvm = Chain(id: 1130, name: 'defichainEvm');
  static const defichainEvmTestnet =
      Chain(id: 1131, name: 'defichainEvmTestnet');
  static const moonbeamDev = Chain(id: 1281, name: 'moonbeamDev');
  static const moonbeam = Chain(id: 1284, name: 'moonbeam');
  static const moonriver = Chain(id: 1285, name: 'moonriver');
  static const moonbaseAlpha = Chain(id: 1287, name: 'moonbaseAlpha');
  static const localhost = Chain(id: 1337, name: 'localhost');
  static const polygonZkEvmTestnet =
      Chain(id: 1442, name: 'polygonZkEvmTestnet');
  static const metachainIstanbul = Chain(id: 1453, name: 'metachainIstanbul');
  static const tenet = Chain(id: 1559, name: 'tenet');
  static const gobi = Chain(id: 1663, name: 'gobi');
  static const mintSepoliaTestnet = Chain(id: 1686, name: 'mintSepoliaTestnet');
  static const reyaNetwork = Chain(id: 1729, name: 'reyaNetwork');
  static const lightlinkPhoenix = Chain(id: 1890, name: 'lightlinkPhoenix');
  static const lightlinkPegasus = Chain(id: 1891, name: 'lightlinkPegasus');
  static const ekta = Chain(id: 1994, name: 'ekta');
  static const dogechain = Chain(id: 2000, name: 'dogechain');
  static const telcoinTestnet = Chain(id: 2017, name: 'telcoinTestnet');
  static const ronin = Chain(id: 2020, name: 'ronin');
  static const edgeware = Chain(id: 2021, name: 'edgeware');
  static const saigon = Chain(id: 2021, name: 'saigon');
  static const edgewareTestnet = Chain(id: 2022, name: 'edgewareTestnet');
  static const edgeless = Chain(id: 2026, name: 'edgeless');
  static const kavaTestnet = Chain(id: 2221, name: 'kavaTestnet');
  static const kava = Chain(id: 2222, name: 'kava');
  static const rss3Sepolia = Chain(id: 2331, name: 'rss3Sepolia');
  static const kromaSepolia = Chain(id: 2358, name: 'kromaSepolia');
  static const polygonZkEvmCardona =
      Chain(id: 2442, name: 'polygonZkEvmCardona');
  static const fraxtalTestnet = Chain(id: 2522, name: 'fraxtalTestnet');
  static const inEVM = Chain(id: 2525, name: 'inEVM');
  static const morphSepolia = Chain(id: 2710, name: 'morphSepolia');
  static const filecoinHyperspace = Chain(id: 3141, name: 'filecoinHyperspace');
  static const crossbell = Chain(id: 3737, name: 'crossbell');
  static const astarZkEVM = Chain(id: 3776, name: 'astarZkEVM');
  static const apexTestnet = Chain(id: 3993, name: 'apexTestnet');
  static const fantomTestnet = Chain(id: 4002, name: 'fantomTestnet');
  static const oasisTestnet = Chain(id: 4090, name: 'oasisTestnet');
  static const merlin = Chain(id: 4200, name: 'merlin');
  static const luksoTestnet = Chain(id: 4201, name: 'luksoTestnet');
  static const liskSepolia = Chain(id: 4202, name: 'liskSepolia');
  static const nexi = Chain(id: 4242, name: 'nexi');
  static const beam = Chain(id: 4337, name: 'beam');
  static const iotex = Chain(id: 4689, name: 'iotex');
  static const iotexTestnet = Chain(id: 4690, name: 'iotexTestnet');
  static const mevTestnet = Chain(id: 4759, name: 'mevTestnet');
  static const bxnTestnet = Chain(id: 4777, name: 'bxnTestnet');
  static const bxn = Chain(id: 4999, name: 'bxn');
  static const mantle = Chain(id: 5000, name: 'mantle');
  static const mantleTestnet = Chain(id: 5001, name: 'mantleTestnet');
  static const mantleSepoliaTestnet =
      Chain(id: 5003, name: 'mantleSepoliaTestnet');
  static const bahamut = Chain(id: 5165, name: 'bahamut');
  static const opBNBTestnet = Chain(id: 5611, name: 'opBNBTestnet');
  static const syscoinTestnet = Chain(id: 5700, name: 'syscoinTestnet');
  static const zetachain = Chain(id: 7000, name: 'zetachain');
  static const zetachainAthensTestnet =
      Chain(id: 7001, name: 'zetachainAthensTestnet');
  static const eon = Chain(id: 7332, name: 'eon');
  static const mev = Chain(id: 7518, name: 'mev');
  static const cyber = Chain(id: 7560, name: 'cyber');
  static const canto = Chain(id: 7700, name: 'canto');
  static const shardeumSphinx = Chain(id: 8082, name: 'shardeumSphinx');
  static const klaytn = Chain(id: 8217, name: 'klaytn');
  static const base = Chain(id: 8453, name: 'base');
  static const jbc = Chain(id: 8899, name: 'jbc');
  static const evmosTestnet = Chain(id: 9000, name: 'evmosTestnet');
  static const evmos = Chain(id: 9001, name: 'evmos');
  static const oortMainnetDev = Chain(id: 9700, name: 'oortMainnetDev');
  static const gnosisChiado = Chain(id: 10200, name: 'gnosisChiado');
  static const haqqMainnet = Chain(id: 11235, name: 'haqqMainnet');
  static const bevmMainnet = Chain(id: 11501, name: 'bevmMainnet');
  static const fibo = Chain(id: 12306, name: 'fibo');
  static const rss3 = Chain(id: 12553, name: 'rss3');
  static const beamTestnet = Chain(id: 13337, name: 'beamTestnet');
  static const immutableZkEvm = Chain(id: 13371, name: 'immutableZkEvm');
  static const phoenix = Chain(id: 13381, name: 'phoenix');
  static const immutableZkEvmTestnet =
      Chain(id: 13473, name: 'immutableZkEvmTestnet');
  static const eosTestnet = Chain(id: 15557, name: 'eosTestnet');
  static const holesky = Chain(id: 17000, name: 'holesky');
  static const eos = Chain(id: 17777, name: 'eos');
  static const sapphire = Chain(id: 23294, name: 'sapphire');
  static const sapphireTestnet = Chain(id: 23295, name: 'sapphireTestnet');
  static const dreyerxMainnet = Chain(id: 23451, name: 'dreyerxMainnet');
  static const anvil = Chain(id: 31337, name: 'anvil');
  static const foundry = Chain(id: 31337, name: 'foundry');
  static const hardhat = Chain(id: 31337, name: 'hardhat');
  static const zilliqa = Chain(id: 32769, name: 'zilliqa');
  static const zilliqaTestnet = Chain(id: 33101, name: 'zilliqaTestnet');
  static const mode = Chain(id: 34443, name: 'mode');
  static const qMainnet = Chain(id: 35441, name: 'qMainnet');
  static const qTestnet = Chain(id: 35443, name: 'qTestnet');
  static const arbitrum = Chain(id: 42161, name: 'arbitrum');
  static const arbitrumNova = Chain(id: 42170, name: 'arbitrumNova');
  static const celo = Chain(id: 42220, name: 'celo');
  static const zkFair = Chain(id: 42766, name: 'zkFair');
  static const avalancheFuji = Chain(id: 43113, name: 'avalancheFuji');
  static const avalanche = Chain(id: 43114, name: 'avalanche');
  static const zkFairTestnet = Chain(id: 43851, name: 'zkFairTestnet');
  static const celoAlfajores = Chain(id: 44787, name: 'celoAlfajores');
  static const yooldoVerse = Chain(id: 50005, name: 'yooldoVerse');
  static const yooldoVerseTestnet =
      Chain(id: 50006, name: 'yooldoVerseTestnet');
  static const dodochainTestnet = Chain(id: 53457, name: 'dodochainTestnet');
  static const dfk = Chain(id: 53935, name: 'dfk');
  static const haqqTestedge2 = Chain(id: 54211, name: 'haqqTestedge2');
  static const rolluxTestnet = Chain(id: 57000, name: 'rolluxTestnet');
  static const pgnTestnet = Chain(id: 58008, name: 'pgnTestnet');
  static const lineaGoerli = Chain(id: 59140, name: 'lineaGoerli');
  static const lineaTestnet = Chain(id: 59140, name: 'lineaTestnet');
  static const lineaSepolia = Chain(id: 59141, name: 'lineaSepolia');
  static const linea = Chain(id: 59144, name: 'linea');
  static const fantomSonicTestnet =
      Chain(id: 64240, name: 'fantomSonicTestnet');
  static const polygonMumbai = Chain(id: 80001, name: 'polygonMumbai');
  static const polygonAmoy = Chain(id: 80002, name: 'polygonAmoy');
  static const berachainTestnet = Chain(id: 80085, name: 'berachainTestnet');
  static const blast = Chain(id: 81457, name: 'blast');
  static const baseGoerli = Chain(id: 84531, name: 'baseGoerli');
  static const baseSepolia = Chain(id: 84532, name: 'baseSepolia');
  static const spicy = Chain(id: 88882, name: 'spicy');
  static const chiliz = Chain(id: 88888, name: 'chiliz');
  static const jbcTestnet = Chain(id: 88991, name: 'jbcTestnet');
  static const vechain = Chain(id: 100009, name: 'vechain');
  static const stratis = Chain(id: 105105, name: 'stratis');
  static const etherlinkTestnet = Chain(id: 128123, name: 'etherlinkTestnet');
  static const taikoTestnetSepolia =
      Chain(id: 167005, name: 'taikoTestnetSepolia');
  static const taikoJolnir = Chain(id: 167007, name: 'taikoJolnir');
  static const taikoKatla = Chain(id: 167008, name: 'taikoKatla');
  static const taikoHekla = Chain(id: 167009, name: 'taikoHekla');
  static const btrTestnet = Chain(id: 200810, name: 'btrTestnet');
  static const btr = Chain(id: 200901, name: 'btr');
  static const auroria = Chain(id: 205205, name: 'auroria');
  static const filecoinCalibration =
      Chain(id: 314159, name: 'filecoinCalibration');
  static const arbitrumGoerli = Chain(id: 421613, name: 'arbitrumGoerli');
  static const arbitrumSepolia = Chain(id: 421614, name: 'arbitrumSepolia');
  static const scrollSepolia = Chain(id: 534351, name: 'scrollSepolia');
  static const scroll = Chain(id: 534352, name: 'scroll');
  static const scrollTestnet = Chain(id: 534353, name: 'scrollTestnet');
  static const bearNetworkChainMainnet =
      Chain(id: 641230, name: 'bearNetworkChainMainnet');
  static const seiDevnet = Chain(id: 713715, name: 'seiDevnet');
  static const bearNetworkChainTestnet =
      Chain(id: 751230, name: 'bearNetworkChainTestnet');
  static const zhejiang = Chain(id: 1337803, name: 'zhejiang');
  static const playfiAlbireo = Chain(id: 1612127, name: 'playfiAlbireo');
  static const mantaTestnet = Chain(id: 3441005, name: 'mantaTestnet');
  static const mantaSepoliaTestnet =
      Chain(id: 3441006, name: 'mantaSepoliaTestnet');
  static const astarZkyoto = Chain(id: 6038361, name: 'astarZkyoto');
  static const zora = Chain(id: 7777777, name: 'zora');
  static const sepolia = Chain(id: 11155111, name: 'sepolia');
  static const optimismSepolia = Chain(id: 11155420, name: 'optimismSepolia');
  static const ancient8Sepolia = Chain(id: 28122024, name: 'ancient8Sepolia');
  static const skaleNebulaTestnet =
      Chain(id: 37084624, name: 'skaleNebulaTestnet');
  static const otimDevnet = Chain(id: 41144114, name: 'otimDevnet');
  static const cyberTestnet = Chain(id: 111557560, name: 'cyberTestnet');
  static const plumeTestnet = Chain(id: 161221135, name: 'plumeTestnet');
  static const blastSepolia = Chain(id: 168587773, name: 'blastSepolia');
  static const neonDevnet = Chain(id: 245022926, name: 'neonDevnet');
  static const neonMainnet = Chain(id: 245022934, name: 'neonMainnet');
  static const skaleRazor = Chain(id: 278611351, name: 'skaleRazor');
  static const skaleBlockBrawlers =
      Chain(id: 391845894, name: 'skaleBlockBrawlers');
  static const degen = Chain(id: 666666666, name: 'degen');
  static const ancient8 = Chain(id: 888888888, name: 'ancient8');
  static const skaleCalypsoTestnet =
      Chain(id: 974399131, name: 'skaleCalypsoTestnet');
  static const zoraSepolia = Chain(id: 999999999, name: 'zoraSepolia');
  static const skaleTitanTestnet =
      Chain(id: 1020352220, name: 'skaleTitanTestnet');
  static const skaleCryptoBlades =
      Chain(id: 1026062157, name: 'skaleCryptoBlades');
  static const skaleCryptoColosseum =
      Chain(id: 1032942172, name: 'skaleCryptoColosseum');
  static const skaleHumanProtocol =
      Chain(id: 1273227453, name: 'skaleHumanProtocol');
  static const aurora = Chain(id: 1313161554, name: 'aurora');
  static const auroraTestnet = Chain(id: 1313161555, name: 'auroraTestnet');
  static const skaleTitan = Chain(id: 1350216234, name: 'skaleTitan');
  static const skaleEuropaTestnet =
      Chain(id: 1444673419, name: 'skaleEuropaTestnet');
  static const skaleNebula = Chain(id: 1482601649, name: 'skaleNebula');
  static const skaleCalypso = Chain(id: 1564830818, name: 'skaleCalypso');
  static const harmonyOne = Chain(id: 1666600000, name: 'harmonyOne');
  static const skaleEuropa = Chain(id: 2046399126, name: 'skaleEuropa');
  static const skaleExorde = Chain(id: 2139927552, name: 'skaleExorde');
  static const palmTestnet = Chain(id: 11297108099, name: 'palmTestnet');
  static const palm = Chain(id: 11297108109, name: 'palm');
  static const kakarotSepolia = Chain(id: 107107114116, name: 'kakarotSepolia');
}
