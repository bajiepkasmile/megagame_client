import 'dart:html' as html;

import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/commands/cursor_command.dart';
import 'package:megagame_client/data/input/sources/input_event.dart';

class MouseMoveEvent extends InputEvent<html.MouseEvent> {

  @override
  bool isAcceptable(html.MouseEvent value) => true;

  @override
  Command createCommand(html.MouseEvent value) =>
      CursorCommand(value.offset.x, value.offset.y);
}