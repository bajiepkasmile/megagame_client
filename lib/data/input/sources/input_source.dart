import 'package:flutter/foundation.dart';
import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/sources/input_event.dart';

abstract class InputSource<TValue> {

  @protected
  abstract final List<InputEvent<TValue>> events;

  Function? _onCommand;

  void subscribe(void Function(Command event) onCommand) {
    _onCommand = onCommand;
    onSubscribe();
  }

  void unsubscribe() {
    onUnsubscribe();
    _onCommand = null;
  }

  @protected
  void onSubscribe();

  @protected
  void onUnsubscribe();

  @protected
  bool handle(TValue value) {
    for (final event in events) {
      if (event.isAcceptable(value)) {
        final command = event.createCommand(value);
        _onCommand?.call(command);
        return true;
      }
    }
    return false;
  }
}
