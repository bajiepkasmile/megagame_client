import 'dart:developer';

import 'package:megagame_client/data/server/connections/connection.dart';

class TestConnection implements Connection {

  @override
  void connect(void Function(dynamic data) onUpdate) {

  }

  @override
  void send(dynamic data) {
  }

  @override
  void disconnect() {

  }
}