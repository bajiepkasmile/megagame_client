import 'dart:html' as html;

import 'package:megagame_client/data/input/commands/ability_command.dart';
import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/models/ability.dart';
import 'package:megagame_client/data/input/sources/keyboard/keyboard_event.dart';

class QDownEvent extends KeyboardEvent {

  @override
  int keyCode = html.KeyCode.Q;

  @override
  bool isKeyDown = true;

  @override
  Command command = AbilityCommand(Ability.q);
}