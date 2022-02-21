import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/commands/cursor_command.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class CursorCommandMapper extends SendMapper<CursorCommand> {

  @override
  bool isAcceptable(Command command) => command is CursorCommand;

  @override
  dynamic map(CursorCommand command) => "Cursor ${command.x} ${command.y}";
}