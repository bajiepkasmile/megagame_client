import 'dart:async';
import 'dart:html' as html;

import 'package:megagame_client/data/input/sources/input_source.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/a_down_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/a_up_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/d_down_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/d_up_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/e_down_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/q_down_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/s_down_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/s_up_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/shift_down_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/space_down_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/w_down_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/events/w_up_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/keyboard_event.dart';
import 'package:megagame_client/data/input/sources/keyboard/keyboard_event_and_is_key_down.dart';

class KeyboardSource extends InputSource<KeyboardEventAndIsKeyDown> {

  StreamSubscription<html.KeyboardEvent>? _keyUpSubscription;
  StreamSubscription<html.KeyboardEvent>? _keyDownSubscription;

  @override
  List<KeyboardEvent> get events => [
    ADownEvent(),
    AUpEvent(),
    DDownEvent(),
    DUpEvent(),
    EDownEvent(),
    QDownEvent(),
    SDownEvent(),
    SUpEvent(),
    ShiftDownEvent(),
    SpaceDownEvent(),
    WDownEvent(),
    WUpEvent(),
  ];

  @override
  void onSubscribe() {
    _keyUpSubscription =
        html.window.onKeyUp.listen((html.KeyboardEvent keyboardEvent) =>
            handle(KeyboardEventAndIsKeyDown(keyboardEvent, false))
        );
    _keyDownSubscription =
        html.window.onKeyDown.listen((html.KeyboardEvent keyboardEvent) =>
            handle(KeyboardEventAndIsKeyDown(keyboardEvent, true))
        );
  }

  @override
  void onUnsubscribe() {
    _keyUpSubscription?.cancel();
    _keyDownSubscription?.cancel();
    _keyUpSubscription = null;
    _keyDownSubscription = null;
  }
}