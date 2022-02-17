import 'package:megagame_client/data/input/commands/move_cursor_command.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class MoveCursorCommandMapper extends SendMapper<MoveCursorCommand> {

  @override
  dynamic map(MoveCursorCommand value) => "MoveCursor ${value.x} ${value.y}";
}