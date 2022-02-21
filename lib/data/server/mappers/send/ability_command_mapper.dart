import 'package:megagame_client/data/input/commands/ability_command.dart';
import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class AbilityCommandMapper extends SendMapper<AbilityCommand> {
  @override
  bool isAcceptable(Command command) => command is AbilityCommand;

  @override
  map(AbilityCommand command) => "Attack";//"Ability ${command.ability.name}";
}