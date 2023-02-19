import 'dart:async';

import 'package:centrifuge/centrifuge.dart';

import 'package:charge_smart_wallets_sdk/src/constants/variables.dart';
import 'package:charge_smart_wallets_sdk/src/utils/jwt.dart';

/// A class that represents a WebSocket connection using the Centrifuge client library.
///
/// This class provides a way to create and manage a WebSocket connection to a Centrifuge server using the
/// centrifuge package. It also provides a static init method that initializes a new Websocket instance
/// and connects it to the server.
class Websocket {
  /// The Centrifuge client instance used to connect to the server.
  final Client _client;

  /// Creates a new Websocket instance with the given client.
  const Websocket(Client client) : _client = client;

  /// The static Websocket instance.
  static Websocket? _instance;

  /// Getter for the Centrifuge client instance used by this Websocket.
  Client get client => _client;

  /// Initializes a new Websocket instance and connects it to the server using the given jwtToken.
  ///
  /// This method takes a JWT token as input, parses it to extract the necessary data, and uses it to create a new
  /// Client instance with the centrifuge package. It then connects the client to the server and returns a new
  /// Websocket instance.
  static Future<Websocket> init(jwtToken) async {
    final Map<String, dynamic> data = JwtParser.parseJwt(jwtToken);
    final Client client = createClient(
      Variables.SOCKET_SERVER_URL,
      ClientConfig(
        name: data['sub'],
        token: jwtToken,
      ),
    );
    await client.connect();
    await client.ready();
    _instance = Websocket(client);
    return _instance!;
  }
}
