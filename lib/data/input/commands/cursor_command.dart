import 'package:megagame_client/data/input/commands/command.dart';

class CursorCommand extends Command {

  final num x, y;

  CursorCommand(this.x, this.y);
}