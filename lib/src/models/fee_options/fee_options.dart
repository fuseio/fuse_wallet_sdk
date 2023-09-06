class TxOptions {
  final String feePerGas;
  final int feeIncrementPercentage;

  TxOptions({
    required this.feePerGas,
    required this.feeIncrementPercentage,
  });

  @override
  String toString() =>
      'TxOptions(feePerGas: $feePerGas, feeIncrementPercentage: $feeIncrementPercentage)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TxOptions &&
        other.feePerGas == feePerGas &&
        other.feeIncrementPercentage == feeIncrementPercentage;
  }

  @override
  int get hashCode => feePerGas.hashCode ^ feeIncrementPercentage.hashCode;
}
