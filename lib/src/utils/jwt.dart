import 'dart:convert';

/// A utility class for parsing JWT tokens.
class JwtParser {
  /// Parses a JWT token and returns its payload as a map.
  ///
  /// [token] - The JWT token to parse.
  ///
  /// Throws an exception if the token is invalid or its payload is not a valid JSON object.
  ///
  /// Returns a map representing the token's payload.
  static Map<String, dynamic> parseJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }

    return payloadMap;
  }

  /// Decodes a base64url-encoded string.
  ///
  /// [str] - The base64url-encoded string to decode.
  ///
  /// Throws an exception if the string is not a valid base64url-encoded string.
  ///
  /// Returns the decoded string as a UTF-8 string.
  static String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }
}
