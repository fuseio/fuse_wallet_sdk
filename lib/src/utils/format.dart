import 'dart:math';

import 'package:decimal/decimal.dart';

class AmountFormat {
  static Decimal fromWei(
    BigInt value,
    int decimals,
  ) =>
      (Decimal.fromBigInt(
                value,
              ) /
              Decimal.fromBigInt(
                BigInt.from(
                  pow(10, decimals),
                ),
              ))
          .toDecimal();

  static String formatValue(
    BigInt value,
    int decimals,
  ) {
    Decimal formattedValue = fromWei(value, decimals);
    return formattedValue.toString();
  }

  static BigInt toBigInt(dynamic value, [int decimals = 18]) {
    if (value == null) throw Exception('Value was not defined');
    final Decimal tokensAmountDecimal = Decimal.parse(value.toString());
    final Decimal decimalsPow = Decimal.parse(pow(10, decimals).toString());
    return BigInt.parse((tokensAmountDecimal * decimalsPow).toString());
  }
}
