import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/sources/input_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/keyboard_event_and_is_key_down.dart';

abstract class KeyboardEvent
    implements InputEvent<KeyboardEventAndIsKeyDown> {

  @override
  bool isAcceptable(KeyboardEventAndIsKeyDown value) {
    final a = value.htmlKeyboardEvent.keyCode == keyCode
        && value.isKeyDown == isKeyDown;
    return a;
  }

  @override
  Command createCommand(KeyboardEventAndIsKeyDown value) => command;

  @protected
  abstract final int keyCode;

  @protected
  abstract final bool isKeyDown;

  @protected
  abstract final Command command;
}