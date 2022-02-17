import 'dart:async';
import 'dart:html' as html;

import 'package:megagame_client/data/input/sources/input_event.dart';
import 'package:megagame_client/data/input/sources/input_source.dart';
import 'package:megagame_client/data/input/sources/mouse/mouse_move_event.dart';

class MouseSource extends InputSource {

  StreamSubscription<html.MouseEvent>? _mouseSubscription;

  @override
  List<InputEvent> get events => [MouseMoveEvent()];

  @override
  void onSubscribe() => _mouseSubscription =
      html.window.onMouseMove.listen(handle);

  @override
  void onUnsubscribe() {
    _mouseSubscription?.cancel();
    _mouseSubscription = null;
  }
}