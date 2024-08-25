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
  Chain({
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
              (key, value) => MapEntry(key, ChainRpcUrls.fromMap(value)),
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
      sourceId: map['sourceId'],
      testnet: map['testnet'],
      custom: map['custom'],
      fees: map['fees'] != null ? ChainFees.fromMap(map['fees']) : null,
      formatters: map['formatters'] != null
          ? ChainFormatters.fromMap(map['formatters'])
          : null,
      serializers: map['serializers'] != null
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

  static final mainnet = Chain(id: 1, name: 'mainnet');
  static final goerli = Chain(id: 5, name: 'goerli');
  static final optimism = Chain(id: 10, name: 'optimism');
  static final flare = Chain(id: 14, name: 'flare');
  static final songbirdTestnet = Chain(id: 16, name: 'songbirdTestnet');
  static final songbird = Chain(id: 19, name: 'songbird');
  static final cronos = Chain(id: 25, name: 'cronos');
  static final rootstock = Chain(id: 30, name: 'rootstock');
  static final rootstockTestnet = Chain(id: 31, name: 'rootstockTestnet');
  static final telos = Chain(id: 40, name: 'telos');
  static final telosTestnet = Chain(id: 41, name: 'telosTestnet');
  static final lukso = Chain(id: 42, name: 'lukso');
  static final darwinia = Chain(id: 46, name: 'darwinia');
  static final xdc = Chain(id: 50, name: 'xdc');
  static final xdcTestnet = Chain(id: 51, name: 'xdcTestnet');
  static final bsc = Chain(id: 56, name: 'bsc');
  static final syscoin = Chain(id: 57, name: 'syscoin');
  static final classic = Chain(id: 61, name: 'classic');
  static final okc = Chain(id: 66, name: 'okc');
  static final confluxESpaceTestnet =
      Chain(id: 71, name: 'confluxESpaceTestnet');
  static final meter = Chain(id: 82, name: 'meter');
  static final meterTestnet = Chain(id: 83, name: 'meterTestnet');
  static final bscTestnet = Chain(id: 97, name: 'bscTestnet');
  static final gnosis = Chain(id: 100, name: 'gnosis');
  static final shibarium = Chain(id: 109, name: 'shibarium');
  static final flareTestnet = Chain(id: 114, name: 'flareTestnet');
  static final fuse = Chain(id: 122, name: 'fuse');
  static final fuseSparknet = Chain(id: 123, name: 'fuseSparknet');
  static final polygon = Chain(id: 137, name: 'polygon');
  static final shimmer = Chain(id: 148, name: 'shimmer');
  static final manta = Chain(id: 169, name: 'manta');
  static final x1Testnet = Chain(id: 195, name: 'x1Testnet');
  static final xLayerTestnet = Chain(id: 195, name: 'xLayerTestnet');
  static final xLayer = Chain(id: 196, name: 'xLayer');
  static final bitTorrent = Chain(id: 199, name: 'bitTorrent');
  static final edgelessTestnet = Chain(id: 202, name: 'edgelessTestnet');
  static final opBNB = Chain(id: 204, name: 'opBNB');
  static final nexilix = Chain(id: 240, name: 'nexilix');
  static final plinga = Chain(id: 242, name: 'plinga');
  static final oasys = Chain(id: 248, name: 'oasys');
  static final fantom = Chain(id: 250, name: 'fantom');
  static final fraxtal = Chain(id: 252, name: 'fraxtal');
  static final kroma = Chain(id: 255, name: 'kroma');
  static final zkSyncInMemoryNode = Chain(id: 260, name: 'zkSyncInMemoryNode');
  static final zkSyncLocalNode = Chain(id: 270, name: 'zkSyncLocalNode');
  static final zkSyncTestnet = Chain(id: 280, name: 'zkSyncTestnet');
  static final boba = Chain(id: 288, name: 'boba');
  static final hedera = Chain(id: 295, name: 'hedera');
  static final hederaTestnet = Chain(id: 296, name: 'hederaTestnet');
  static final hederaPreviewnet = Chain(id: 297, name: 'hederaPreviewnet');
  static final zkSyncSepoliaTestnet =
      Chain(id: 300, name: 'zkSyncSepoliaTestnet');
  static final filecoin = Chain(id: 314, name: 'filecoin');
  static final kcc = Chain(id: 321, name: 'kcc');
  static final zkSync = Chain(id: 324, name: 'zkSync');
  static final cronosTestnet = Chain(id: 338, name: 'cronosTestnet');
  static final pulsechain = Chain(id: 369, name: 'pulsechain');
  static final optimismGoerli = Chain(id: 420, name: 'optimismGoerli');
  static final pgn = Chain(id: 424, name: 'pgn');
  static final areonNetworkTestnet =
      Chain(id: 462, name: 'areonNetworkTestnet');
  static final areonNetwork = Chain(id: 463, name: 'areonNetwork');
  static final flowTestnet = Chain(id: 545, name: 'flowTestnet');
  static final rollux = Chain(id: 570, name: 'rollux');
  static final metachain = Chain(id: 571, name: 'metachain');
  static final astar = Chain(id: 592, name: 'astar');
  static final mandala = Chain(id: 595, name: 'mandala');
  static final metisGoerli = Chain(id: 599, name: 'metisGoerli');
  static final flowPreviewnet = Chain(id: 646, name: 'flowPreviewnet');
  static final karura = Chain(id: 686, name: 'karura');
  static final flowMainnet = Chain(id: 747, name: 'flowMainnet');
  static final acala = Chain(id: 787, name: 'acala');
  static final taraxa = Chain(id: 841, name: 'taraxa');
  static final taraxaTestnet = Chain(id: 842, name: 'taraxaTestnet');
  static final wanchain = Chain(id: 888, name: 'wanchain');
  static final modeTestnet = Chain(id: 919, name: 'modeTestnet');
  static final pulsechainV4 = Chain(id: 943, name: 'pulsechainV4');
  static final thunderTestnet = Chain(id: 997, name: 'thunderTestnet');
  static final wanchainTestnet = Chain(id: 999, name: 'wanchainTestnet');
  static final zoraTestnet = Chain(id: 999, name: 'zoraTestnet');
  static final klaytnBaobab = Chain(id: 1001, name: 'klaytnBaobab');
  static final ektaTestnet = Chain(id: 1004, name: 'ektaTestnet');
  static final bscGreenfield = Chain(id: 1017, name: 'bscGreenfield');
  static final bitTorrentTestnet = Chain(id: 1028, name: 'bitTorrentTestnet');
  static final confluxESpace = Chain(id: 1030, name: 'confluxESpace');
  static final bronosTestnet = Chain(id: 1038, name: 'bronosTestnet');
  static final bronos = Chain(id: 1039, name: 'bronos');
  static final shimmerTestnet = Chain(id: 1073, name: 'shimmerTestnet');
  static final metis = Chain(id: 1088, name: 'metis');
  static final polygonZkEvm = Chain(id: 1101, name: 'polygonZkEvm');
  static final wemix = Chain(id: 1111, name: 'wemix');
  static final wemixTestnet = Chain(id: 1112, name: 'wemixTestnet');
  static final coreDao = Chain(id: 1116, name: 'coreDao');
  static final defichainEvm = Chain(id: 1130, name: 'defichainEvm');
  static final defichainEvmTestnet =
      Chain(id: 1131, name: 'defichainEvmTestnet');
  static final moonbeamDev = Chain(id: 1281, name: 'moonbeamDev');
  static final moonbeam = Chain(id: 1284, name: 'moonbeam');
  static final moonriver = Chain(id: 1285, name: 'moonriver');
  static final moonbaseAlpha = Chain(id: 1287, name: 'moonbaseAlpha');
  static final localhost = Chain(id: 1337, name: 'localhost');
  static final polygonZkEvmTestnet =
      Chain(id: 1442, name: 'polygonZkEvmTestnet');
  static final metachainIstanbul = Chain(id: 1453, name: 'metachainIstanbul');
  static final tenet = Chain(id: 1559, name: 'tenet');
  static final gobi = Chain(id: 1663, name: 'gobi');
  static final mintSepoliaTestnet = Chain(id: 1686, name: 'mintSepoliaTestnet');
  static final reyaNetwork = Chain(id: 1729, name: 'reyaNetwork');
  static final lightlinkPhoenix = Chain(id: 1890, name: 'lightlinkPhoenix');
  static final lightlinkPegasus = Chain(id: 1891, name: 'lightlinkPegasus');
  static final ekta = Chain(id: 1994, name: 'ekta');
  static final dogechain = Chain(id: 2000, name: 'dogechain');
  static final telcoinTestnet = Chain(id: 2017, name: 'telcoinTestnet');
  static final ronin = Chain(id: 2020, name: 'ronin');
  static final edgeware = Chain(id: 2021, name: 'edgeware');
  static final saigon = Chain(id: 2021, name: 'saigon');
  static final edgewareTestnet = Chain(id: 2022, name: 'edgewareTestnet');
  static final edgeless = Chain(id: 2026, name: 'edgeless');
  static final kavaTestnet = Chain(id: 2221, name: 'kavaTestnet');
  static final kava = Chain(id: 2222, name: 'kava');
  static final rss3Sepolia = Chain(id: 2331, name: 'rss3Sepolia');
  static final kromaSepolia = Chain(id: 2358, name: 'kromaSepolia');
  static final polygonZkEvmCardona =
      Chain(id: 2442, name: 'polygonZkEvmCardona');
  static final fraxtalTestnet = Chain(id: 2522, name: 'fraxtalTestnet');
  static final inEVM = Chain(id: 2525, name: 'inEVM');
  static final morphSepolia = Chain(id: 2710, name: 'morphSepolia');
  static final filecoinHyperspace = Chain(id: 3141, name: 'filecoinHyperspace');
  static final crossbell = Chain(id: 3737, name: 'crossbell');
  static final astarZkEVM = Chain(id: 3776, name: 'astarZkEVM');
  static final apexTestnet = Chain(id: 3993, name: 'apexTestnet');
  static final fantomTestnet = Chain(id: 4002, name: 'fantomTestnet');
  static final oasisTestnet = Chain(id: 4090, name: 'oasisTestnet');
  static final merlin = Chain(id: 4200, name: 'merlin');
  static final luksoTestnet = Chain(id: 4201, name: 'luksoTestnet');
  static final liskSepolia = Chain(id: 4202, name: 'liskSepolia');
  static final nexi = Chain(id: 4242, name: 'nexi');
  static final beam = Chain(id: 4337, name: 'beam');
  static final iotex = Chain(id: 4689, name: 'iotex');
  static final iotexTestnet = Chain(id: 4690, name: 'iotexTestnet');
  static final mevTestnet = Chain(id: 4759, name: 'mevTestnet');
  static final bxnTestnet = Chain(id: 4777, name: 'bxnTestnet');
  static final bxn = Chain(id: 4999, name: 'bxn');
  static final mantle = Chain(id: 5000, name: 'mantle');
  static final mantleTestnet = Chain(id: 5001, name: 'mantleTestnet');
  static final mantleSepoliaTestnet =
      Chain(id: 5003, name: 'mantleSepoliaTestnet');
  static final bahamut = Chain(id: 5165, name: 'bahamut');
  static final opBNBTestnet = Chain(id: 5611, name: 'opBNBTestnet');
  static final syscoinTestnet = Chain(id: 5700, name: 'syscoinTestnet');
  static final zetachain = Chain(id: 7000, name: 'zetachain');
  static final zetachainAthensTestnet =
      Chain(id: 7001, name: 'zetachainAthensTestnet');
  static final eon = Chain(id: 7332, name: 'eon');
  static final mev = Chain(id: 7518, name: 'mev');
  static final cyber = Chain(id: 7560, name: 'cyber');
  static final canto = Chain(id: 7700, name: 'canto');
  static final shardeumSphinx = Chain(id: 8082, name: 'shardeumSphinx');
  static final klaytn = Chain(id: 8217, name: 'klaytn');
  static final base = Chain(id: 8453, name: 'base');
  static final jbc = Chain(id: 8899, name: 'jbc');
  static final evmosTestnet = Chain(id: 9000, name: 'evmosTestnet');
  static final evmos = Chain(id: 9001, name: 'evmos');
  static final oortMainnetDev = Chain(id: 9700, name: 'oortMainnetDev');
  static final gnosisChiado = Chain(id: 10200, name: 'gnosisChiado');
  static final haqqMainnet = Chain(id: 11235, name: 'haqqMainnet');
  static final bevmMainnet = Chain(id: 11501, name: 'bevmMainnet');
  static final fibo = Chain(id: 12306, name: 'fibo');
  static final rss3 = Chain(id: 12553, name: 'rss3');
  static final beamTestnet = Chain(id: 13337, name: 'beamTestnet');
  static final immutableZkEvm = Chain(id: 13371, name: 'immutableZkEvm');
  static final phoenix = Chain(id: 13381, name: 'phoenix');
  static final immutableZkEvmTestnet =
      Chain(id: 13473, name: 'immutableZkEvmTestnet');
  static final eosTestnet = Chain(id: 15557, name: 'eosTestnet');
  static final holesky = Chain(id: 17000, name: 'holesky');
  static final eos = Chain(id: 17777, name: 'eos');
  static final sapphire = Chain(id: 23294, name: 'sapphire');
  static final sapphireTestnet = Chain(id: 23295, name: 'sapphireTestnet');
  static final dreyerxMainnet = Chain(id: 23451, name: 'dreyerxMainnet');
  static final anvil = Chain(id: 31337, name: 'anvil');
  static final foundry = Chain(id: 31337, name: 'foundry');
  static final hardhat = Chain(id: 31337, name: 'hardhat');
  static final zilliqa = Chain(id: 32769, name: 'zilliqa');
  static final zilliqaTestnet = Chain(id: 33101, name: 'zilliqaTestnet');
  static final mode = Chain(id: 34443, name: 'mode');
  static final qMainnet = Chain(id: 35441, name: 'qMainnet');
  static final qTestnet = Chain(id: 35443, name: 'qTestnet');
  static final arbitrum = Chain(id: 42161, name: 'arbitrum');
  static final arbitrumNova = Chain(id: 42170, name: 'arbitrumNova');
  static final celo = Chain(id: 42220, name: 'celo');
  static final zkFair = Chain(id: 42766, name: 'zkFair');
  static final avalancheFuji = Chain(id: 43113, name: 'avalancheFuji');
  static final avalanche = Chain(id: 43114, name: 'avalanche');
  static final zkFairTestnet = Chain(id: 43851, name: 'zkFairTestnet');
  static final celoAlfajores = Chain(id: 44787, name: 'celoAlfajores');
  static final yooldoVerse = Chain(id: 50005, name: 'yooldoVerse');
  static final yooldoVerseTestnet =
      Chain(id: 50006, name: 'yooldoVerseTestnet');
  static final dodochainTestnet = Chain(id: 53457, name: 'dodochainTestnet');
  static final dfk = Chain(id: 53935, name: 'dfk');
  static final haqqTestedge2 = Chain(id: 54211, name: 'haqqTestedge2');
  static final rolluxTestnet = Chain(id: 57000, name: 'rolluxTestnet');
  static final pgnTestnet = Chain(id: 58008, name: 'pgnTestnet');
  static final lineaGoerli = Chain(id: 59140, name: 'lineaGoerli');
  static final lineaTestnet = Chain(id: 59140, name: 'lineaTestnet');
  static final lineaSepolia = Chain(id: 59141, name: 'lineaSepolia');
  static final linea = Chain(id: 59144, name: 'linea');
  static final fantomSonicTestnet =
      Chain(id: 64240, name: 'fantomSonicTestnet');
  static final polygonMumbai = Chain(id: 80001, name: 'polygonMumbai');
  static final polygonAmoy = Chain(id: 80002, name: 'polygonAmoy');
  static final berachainTestnet = Chain(id: 80085, name: 'berachainTestnet');
  static final blast = Chain(id: 81457, name: 'blast');
  static final baseGoerli = Chain(id: 84531, name: 'baseGoerli');
  static final baseSepolia = Chain(id: 84532, name: 'baseSepolia');
  static final spicy = Chain(id: 88882, name: 'spicy');
  static final chiliz = Chain(id: 88888, name: 'chiliz');
  static final jbcTestnet = Chain(id: 88991, name: 'jbcTestnet');
  static final vechain = Chain(id: 100009, name: 'vechain');
  static final stratis = Chain(id: 105105, name: 'stratis');
  static final etherlinkTestnet = Chain(id: 128123, name: 'etherlinkTestnet');
  static final taikoTestnetSepolia =
      Chain(id: 167005, name: 'taikoTestnetSepolia');
  static final taikoJolnir = Chain(id: 167007, name: 'taikoJolnir');
  static final taikoKatla = Chain(id: 167008, name: 'taikoKatla');
  static final taikoHekla = Chain(id: 167009, name: 'taikoHekla');
  static final btrTestnet = Chain(id: 200810, name: 'btrTestnet');
  static final btr = Chain(id: 200901, name: 'btr');
  static final auroria = Chain(id: 205205, name: 'auroria');
  static final filecoinCalibration =
      Chain(id: 314159, name: 'filecoinCalibration');
  static final arbitrumGoerli = Chain(id: 421613, name: 'arbitrumGoerli');
  static final arbitrumSepolia = Chain(id: 421614, name: 'arbitrumSepolia');
  static final scrollSepolia = Chain(id: 534351, name: 'scrollSepolia');
  static final scroll = Chain(id: 534352, name: 'scroll');
  static final scrollTestnet = Chain(id: 534353, name: 'scrollTestnet');
  static final bearNetworkChainMainnet =
      Chain(id: 641230, name: 'bearNetworkChainMainnet');
  static final seiDevnet = Chain(id: 713715, name: 'seiDevnet');
  static final bearNetworkChainTestnet =
      Chain(id: 751230, name: 'bearNetworkChainTestnet');
  static final zhejiang = Chain(id: 1337803, name: 'zhejiang');
  static final playfiAlbireo = Chain(id: 1612127, name: 'playfiAlbireo');
  static final mantaTestnet = Chain(id: 3441005, name: 'mantaTestnet');
  static final mantaSepoliaTestnet =
      Chain(id: 3441006, name: 'mantaSepoliaTestnet');
  static final astarZkyoto = Chain(id: 6038361, name: 'astarZkyoto');
  static final zora = Chain(id: 7777777, name: 'zora');
  static final sepolia = Chain(id: 11155111, name: 'sepolia');
  static final optimismSepolia = Chain(id: 11155420, name: 'optimismSepolia');
  static final ancient8Sepolia = Chain(id: 28122024, name: 'ancient8Sepolia');
  static final skaleNebulaTestnet =
      Chain(id: 37084624, name: 'skaleNebulaTestnet');
  static final otimDevnet = Chain(id: 41144114, name: 'otimDevnet');
  static final cyberTestnet = Chain(id: 111557560, name: 'cyberTestnet');
  static final plumeTestnet = Chain(id: 161221135, name: 'plumeTestnet');
  static final blastSepolia = Chain(id: 168587773, name: 'blastSepolia');
  static final neonDevnet = Chain(id: 245022926, name: 'neonDevnet');
  static final neonMainnet = Chain(id: 245022934, name: 'neonMainnet');
  static final skaleRazor = Chain(id: 278611351, name: 'skaleRazor');
  static final skaleBlockBrawlers =
      Chain(id: 391845894, name: 'skaleBlockBrawlers');
  static final degen = Chain(id: 666666666, name: 'degen');
  static final ancient8 = Chain(id: 888888888, name: 'ancient8');
  static final skaleCalypsoTestnet =
      Chain(id: 974399131, name: 'skaleCalypsoTestnet');
  static final zoraSepolia = Chain(id: 999999999, name: 'zoraSepolia');
  static final skaleTitanTestnet =
      Chain(id: 1020352220, name: 'skaleTitanTestnet');
  static final skaleCryptoBlades =
      Chain(id: 1026062157, name: 'skaleCryptoBlades');
  static final skaleCryptoColosseum =
      Chain(id: 1032942172, name: 'skaleCryptoColosseum');
  static final skaleHumanProtocol =
      Chain(id: 1273227453, name: 'skaleHumanProtocol');
  static final aurora = Chain(id: 1313161554, name: 'aurora');
  static final auroraTestnet = Chain(id: 1313161555, name: 'auroraTestnet');
  static final skaleTitan = Chain(id: 1350216234, name: 'skaleTitan');
  static final skaleEuropaTestnet =
      Chain(id: 1444673419, name: 'skaleEuropaTestnet');
  static final skaleNebula = Chain(id: 1482601649, name: 'skaleNebula');
  static final skaleCalypso = Chain(id: 1564830818, name: 'skaleCalypso');
  static final harmonyOne = Chain(id: 1666600000, name: 'harmonyOne');
  static final skaleEuropa = Chain(id: 2046399126, name: 'skaleEuropa');
  static final skaleExorde = Chain(id: 2139927552, name: 'skaleExorde');
  static final palmTestnet = Chain(id: 11297108099, name: 'palmTestnet');
  static final palm = Chain(id: 11297108109, name: 'palm');
  static final kakarotSepolia = Chain(id: 107107114116, name: 'kakarotSepolia');
}
