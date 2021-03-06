import 'dart:html' as html;

import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/commands/move_command.dart';
import 'package:megagame_client/data/input/models/action.dart';
import 'package:megagame_client/data/input/models/direction.dart';
import 'package:megagame_client/data/input/sources/keyboard/keyboard_event.dart';

class SDownEvent extends KeyboardEvent {

  @override
  int keyCode = html.KeyCode.S;

  @override
  bool isKeyDown = true;

  @override
  Command command = MoveCommand(Direction.up, Action.start);
}