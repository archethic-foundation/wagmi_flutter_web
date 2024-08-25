import 'package:wagmi_flutter_web/src/models/chain_formatter.dart';

class ChainFormatters {
  ChainFormatters({
    this.block,
    this.transaction,
    this.transactionReceipt,
    this.transactionRequest,
  });

  factory ChainFormatters.fromMap(Map<String, dynamic> map) {
    return ChainFormatters(
      block: map['block'] != null ? ChainFormatter.fromMap(map['block']) : null,
      transaction: map['transaction'] != null
          ? ChainFormatter.fromMap(map['transaction'])
          : null,
      transactionReceipt: map['transactionReceipt'] != null
          ? ChainFormatter.fromMap(map['transactionReceipt'])
          : null,
      transactionRequest: map['transactionRequest'] != null
          ? ChainFormatter.fromMap(map['transactionRequest'])
          : null,
    );
  }

  ChainFormatter? block;
  ChainFormatter? transaction;
  ChainFormatter? transactionReceipt;
  ChainFormatter? transactionRequest;
}
