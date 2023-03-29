import 'dart:async';

import 'package:centrifuge/centrifuge.dart';

import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:fuse_wallet_sdk/src/utils/jwt.dart';

/// A class that represents a WebSocket connection using the Centrifuge client library.
///
/// This class provides a way to create and manage a WebSocket connection to a Centrifuge server using the
/// Centrifuge package. It also provides a static init method that initializes a new WebSocket instance
/// and connects it to the server.
class WebSocketConnection {
  /// The Centrifuge client instance used to connect to the server.
  final Client _client;

  /// Creates a new WebSocketConnection instance with the given client.
  const WebSocketConnection(Client client) : _client = client;

  /// The static WebSocketConnection instance.
  static WebSocketConnection? _instance;

  /// Getter for the Centrifuge client instance used by this WebSocketConnection.
  Client get client => _client;

  /// Initializes a new WebSocketConnection instance and connects it to the server using the given jwtToken.
  ///
  /// This method takes a JWT token as input, parses it to extract the necessary data, and uses it to create a new
  /// Client instance with the Centrifuge package. It then connects the client to the server and returns a new
  /// WebSocketConnection instance.
  static Future<WebSocketConnection> init(String jwtToken) async {
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
    _instance = WebSocketConnection(client);
    return _instance!;
  }
}
