import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/server/mappers/send/ability_command_mapper.dart';
import 'package:megagame_client/data/server/mappers/send/cursor_command_mapper.dart';
import 'package:megagame_client/data/server/mappers/send/move_command_mapper.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class CommandMapper {

  final _mappers = <SendMapper>[
    AbilityCommandMapper(),
    MoveCommandMapper(),
    CursorCommandMapper(),
  ];

  dynamic map(Command command) {
    for (final mapper in _mappers) {
      if (mapper.isAcceptable(command)) {
        return mapper.map(command);
      }
    }
  }
}