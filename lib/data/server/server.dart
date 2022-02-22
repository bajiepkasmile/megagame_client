import 'package:flutter/widgets.dart';
import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/server/connections/connection.dart';
import 'package:megagame_client/data/server/connections/web_socket_connection.dart';
import 'package:megagame_client/data/server/world_mapper.dart';
import 'package:megagame_client/data/server/command_mapper.dart';

class Server {

  final Connection _connection = WebSocketConnection();
  final CommandMapper _commandMapper = CommandMapper();
  final WorldMapper _worldWidgetMapper = WorldMapper();

  void send(Command command) => _connection.send(_commandMapper.map(command));

  void receive(void Function(Widget) onReceive) =>
    _connection.connect((data) => onReceive(_worldWidgetMapper.map(data)));

  void exit() => _connection.disconnect();
}