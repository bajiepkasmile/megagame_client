import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/models/action.dart';
import 'package:megagame_client/data/input/models/direction.dart';

class MoveCommand extends Command {

  final Direction direction;
  final Action action;

  MoveCommand(this.direction, this.action);
}