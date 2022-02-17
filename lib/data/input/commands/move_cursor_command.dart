import 'package:megagame_client/data/input/commands/command.dart';

class MoveCursorCommand extends Command {

  final num x, y;

  MoveCursorCommand(this.x, this.y);
}