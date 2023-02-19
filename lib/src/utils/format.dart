import 'dart:math';

import 'package:decimal/decimal.dart';

/// A utility class for formatting and converting wei amounts.
class AmountFormat {
  /// Converts a value in wei to its equivalent decimal representation, based on the specified number of decimals.
  ///
  /// [value] - The value to convert, in wei.
  ///
  /// [decimals] - The number of decimals for the token.
  ///
  /// Returns a Decimal representation of the value.
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

  /// Formats a value in wei as a string, based on the specified number of decimals.
  ///
  /// [value] - The value to format, in wei.
  ///
  /// [decimals] - The number of decimals for the token.
  ///
  /// Returns a string representation of the value, formatted to display the appropriate number of decimal places.
  static String formatValue(
    BigInt value,
    int decimals,
  ) {
    Decimal formattedValue = fromWei(value, decimals);
    return formattedValue.toString();
  }

  /// Converts a value to its equivalent value in wei, based on the specified number of decimals.
  ///
  /// [value] - The value to convert.
  ///
  /// [decimals] - The number of decimals for the token.
  ///
  /// Throws an exception if the input value is null.
  ///
  /// Returns a BigInt representation of the value in wei.
  static BigInt toBigInt(dynamic value, [int decimals = 18]) {
    if (value == null) throw Exception('Value was not defined');
    final Decimal tokensAmountDecimal = Decimal.parse(value.toString());
    final Decimal decimalsPow = Decimal.parse(pow(10, decimals).toString());
    return BigInt.parse((tokensAmountDecimal * decimalsPow).toString());
  }
}
