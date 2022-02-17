import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/models/ability.dart';

class AbilityCommand extends Command {

  final Ability ability;

  AbilityCommand(this.ability);
}