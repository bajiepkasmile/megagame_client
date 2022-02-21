import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/input_config.dart';
import 'package:megagame_client/data/input/sources/input_source.dart';
import 'package:megagame_client/data/input/sources/keyboard/keyboard_input.dart';
import 'package:megagame_client/data/input/sources/mouse/mouse_source.dart';
import 'package:megagame_client/data/input/sources/speech/speech_source.dart';

class Input {

  final List<InputSource> _sources = [
    KeyboardSource(),
    // MouseSource(),
    // SpeechSource(),
  ];

  void subscribe(InputConfig filter, void Function(Command command) onCommand) {
    for (final source in _sources) {
      source.subscribe((Command command) {
        if (filter.isAcceptable(source, command)) {
          onCommand(command);
        }
      });
    }

  }

  void unsubscribe() {
    for (final source in _sources) {
      source.unsubscribe();
    }
  }
}