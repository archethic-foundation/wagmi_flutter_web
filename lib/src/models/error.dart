// ignore_for_file: constant_identifier_names

class WagmiError implements Exception {
  WagmiError({
    required this.name,
    this.message,
    this.metaMessages,
    this.shortMessage,
    this.version,
    this.cause,
    this.docsPath,
    this.details,
  });

  final WagmiErrors name;
  final String? message;
  final List<String>? metaMessages;
  final String? shortMessage;
  final String? version;
  final WagmiError? cause;
  final String? docsPath;

  /// The raw error object
  final Map<String, dynamic>? details;

  @override
  String toString() => '$name : ${message ?? shortMessage}';
}

enum WagmiErrors {
  /// [abi](https://github.com/wevm/viem/blob/main/src/errors/abi.ts)
  AbiConstructorNotFoundError,
  AbiConstructorParamsNotFoundError,
  AbiDecodingDataSizeInvalidError,
  AbiDecodingDataSizeTooSmallError,
  AbiDecodingZeroDataError,
  AbiEncodingArrayLengthMismatchError,
  AbiEncodingBytesSizeMismatchError,
  AbiEncodingLengthMismatchError,
  AbiErrorInputsNotFoundError,
  AbiErrorNotFoundError,
  AbiErrorSignatureNotFoundError,
  AbiEventSignatureEmptyTopicsError,
  AbiEventSignatureNotFoundError,
  AbiEventNotFoundError,
  AbiFunctionNotFoundError,
  AbiFunctionOutputsNotFoundError,
  AbiFunctionSignatureNotFoundError,
  AbiItemAmbiguityError,
  BytesSizeMismatchError,
  InvalidAbiEncodingTypeError,
  InvalidAbiDecodingTypeError,
  InvalidArrayError,
  InvalidDefinitionTypeError,

  /// [account](https://github.com/wevm/viem/blob/main/src/errors/account.ts)
  AccountNotFoundError,
  AccountTypeNotSupportedError,

  /// [address](https://github.com/wevm/viem/blob/main/src/errors/address.ts)
  InvalidAddressError,

  /// [blob](https://github.com/wevm/viem/blob/main/src/errors/blob.ts)
  BlobSizeTooLargeError,
  EmptyBlobError,
  InvalidVersionedHashSizeError,
  InvalidVersionedHashVersionError,

  /// [block](https://github.com/wevm/viem/blob/main/src/errors/block.ts)
  BlockNotFoundError,

  /// [ccip](https://github.com/wevm/viem/blob/main/src/errors/ccip.ts)
  OffchainLookupError,
  OffchainLookupResponseMalformedError,
  OffchainLookupSenderMismatchError,

  /// [chain](https://github.com/wevm/viem/blob/main/src/errors/chain.ts)
  ChainMismatchError,
  ChainNotFoundError,
  ClientChainNotConfiguredError,
  InvalidChainIdError,

  /// [contract](https://github.com/wevm/viem/blob/main/src/errors/contract.ts)
  CallExecutionError,
  ContractFunctionExecutionError,
  ContractFunctionRevertedError,
  ContractFunctionZeroDataError,
  CounterfactualDeploymentFailedError,
  RawContractError,

  /// [cursor](https://github.com/wevm/viem/blob/main/src/errors/cursor.ts)
  NegativeOffsetError,
  PositionOutOfBoundsError,
  RecursiveReadLimitExceededError,

  /// [data](https://github.com/wevm/viem/blob/main/src/errors/data.ts)
  SliceOffsetOutOfBoundsError,
  SizeExceedsPaddingSizeError,
  InvalidBytesLengthError,

  /// [encoding](https://github.com/wevm/viem/blob/main/src/errors/encoding.ts)
  IntegerOutOfRangeError,
  InvalidBytesBooleanError,
  InvalidHexBooleanError,
  InvalidHexValueError,
  SizeOverflowError,

  /// [ens](https://github.com/wevm/viem/blob/main/src/errors/ens.ts)
  EnsAvatarInvalidMetadataError,
  EnsAvatarInvalidNftUriError,
  EnsAvatarUriResolutionError,
  EnsAvatarUnsupportedNamespaceError,

  /// [estimateGas](https://github.com/wevm/viem/blob/main/src/errors/estimateGas.ts)
  EstimateGasExecutionError,

  /// [fee](https://github.com/wevm/viem/blob/main/src/errors/fee.ts)
  BaseFeeScalarError,
  MaxFeePerGasTooLowError,

  /// [log](https://github.com/wevm/viem/blob/main/src/errors/log.ts)
  FilterTypeNotSupportedError,

  /// [node](https://github.com/wevm/viem/blob/main/src/errors/node.ts)
  ExecutionRevertedError,
  FeeCapTooHighError,
  FeeCapTooLowError,
  NonceTooHighError,
  NonceTooLowError,
  NonceMaxValueError,
  InsufficientFundsError,
  IntrinsicGasTooHighError,
  IntrinsicGasTooLowError,
  TransactionTypeNotSupportedError,
  TipAboveFeeCapError,
  UnknownNodeError,

  /// [request](https://github.com/wevm/viem/blob/main/src/errors/request.ts)
  HttpRequestError,
  WebSocketRequestError,
  RpcRequestError,
  SocketClosedError,
  TimeoutError,

  /// [rpc](https://github.com/wevm/viem/blob/main/src/errors/rpc.ts)
  ProviderRpcError,
  ParseRpcError,
  InvalidRequestRpcError,
  MethodNotFoundRpcError,
  InvalidParamsRpcError,
  InternalRpcError,
  InvalidInputRpcError,
  ResourceNotFoundRpcError,
  ResourceUnavailableRpcError,
  TransactionRejectedRpcError,
  MethodNotSupportedRpcError,
  LimitExceededRpcError,
  JsonRpcVersionUnsupportedError,
  UserRejectedRequestError,
  UnauthorizedProviderError,
  UnsupportedProviderMethodError,
  ProviderDisconnectedError,
  ChainDisconnectedError,
  SwitchChainError,
  UnknownRpcError,

  /// [siwe](https://github.com/wevm/viem/blob/main/src/errors/siwe.ts)
  SiweInvalidMessageFieldError,

  /// [stateOverride](https://github.com/wevm/viem/blob/main/src/errors/stateOverride.ts)
  AccountStateConflictError,
  StateAssignmentConflictError,

  /// [transaction](https://github.com/wevm/viem/blob/main/src/errors/transaction.ts)
  FeeConflictError,
  InvalidLegacyVError,
  InvalidSerializableTransactionError,
  InvalidSerializedTransactionTypeError,
  InvalidSerializedTransactionError,
  InvalidStorageKeySizeError,
  TransactionExecutionError,
  TransactionNotFoundError,
  TransactionReceiptNotFoundError,
  WaitForTransactionReceiptTimeoutError,

  /// [transport](https://github.com/wevm/viem/blob/main/src/errors/transport.ts)
  UrlRequiredError,
}
