import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/server/connections/connection.dart';
import 'package:megagame_client/data/server/connections/web_socket_connection.dart';
import 'package:megagame_client/data/server/mappers/receive/player_widget_mapper.dart';
import 'package:megagame_client/data/server/mappers/receive/world_widget_mapper.dart';
import 'package:megagame_client/data/server/mappers/send/command_mapper.dart';
import 'package:megagame_client/data/server/models/world_widget.dart';

class Server {

  final Connection _connection = WebSocketConnection();
  final CommandMapper _commandMapper = CommandMapper();
  final WorldWidgetMapper _worldWidgetMapper =
    WorldWidgetMapper(PlayerWidgetMapper());

  void send(Command command) => _connection.send(_commandMapper.map(command));

  void receive(void Function(WorldWidget) onReceive) =>
    _connection.connect((data) => onReceive(_worldWidgetMapper.map(data)));

  void exit() => _connection.disconnect();
}