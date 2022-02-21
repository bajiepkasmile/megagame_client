import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/commands/move_command.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class MoveCommandMapper extends SendMapper<MoveCommand> {

  @override
  bool isAcceptable(Command command) => command is MoveCommand;

  @override
  dynamic map(MoveCommand command) =>
      "Move ${command.direction.name} ${command.action.name}";
}