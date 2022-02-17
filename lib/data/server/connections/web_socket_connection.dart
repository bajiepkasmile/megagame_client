import 'dart:math';

import 'package:megagame_client/data/server/connections/connection.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketConnection implements Connection {

  WebSocketChannel? _channel;

  @override
  void connect(void Function(dynamic data) onUpdate) {
    final id = Random().nextInt(1000000);
    _channel =
        WebSocketChannel.connect(Uri.parse("ws://87.247.157.178:8001/ws/$id"));
    _channel?.stream.listen(onUpdate);
  }

  @override
  void send(dynamic data) =>_channel?.sink.add(data);

  @override
  void disconnect() => _channel?.sink.close();
}