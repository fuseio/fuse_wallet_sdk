import 'dart:math';

import 'package:decimal/decimal.dart';

/// A utility class for formatting and converting token amounts.
class AmountFormat {
  /// Converts a token amount from its smallest unit (Wei) to its decimal representation.
  ///
  /// [value] - The amount in its smallest unit (BigInt).
  /// [decimals] - The number of decimal places for the token.
  ///
  /// Returns the decimal representation of the token amount (Decimal).
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

  /// Formats a token amount to a string representation.
  ///
  /// [value] - The amount in its smallest unit (BigInt).
  /// [decimals] - The number of decimal places for the token.
  ///
  /// Returns the string representation of the token amount (String).
  static String formatValue(
    BigInt value,
    int decimals,
  ) {
    Decimal formattedValue = fromWei(value, decimals);
    return formattedValue.toString();
  }

  /// Converts a token amount to its smallest unit (BigInt) representation.
  ///
  /// [value] - The amount as a dynamic type.
  /// [decimals] - (Optional) The number of decimal places for the token, defaults to 18.
  ///
  /// Returns the token amount in its smallest unit representation (BigInt).
  static BigInt toBigInt(dynamic value, [int decimals = 18]) {
    if (value == null) throw Exception('Value was not defined');
    final Decimal tokensAmountDecimal = Decimal.parse(value.toString());
    final Decimal decimalsPow = Decimal.parse(pow(10, decimals).toString());
    return BigInt.parse((tokensAmountDecimal * decimalsPow).toString());
  }
}
