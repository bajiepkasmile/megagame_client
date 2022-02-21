import 'package:megagame_client/data/input/commands/ability_command.dart';
import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/commands/move_command.dart';
import 'package:megagame_client/data/input/commands/cursor_command.dart';
import 'package:megagame_client/data/input/sources/input_source.dart';
import 'package:megagame_client/data/input/sources/keyboard/keyboard_input.dart';
import 'package:megagame_client/data/input/sources/mouse/mouse_source.dart';
import 'package:megagame_client/data/input/sources/speech/speech_source.dart';

class InputConfig {

  static final speech = InputConfig._(
      {
        SpeechSource: [AbilityCommand],
        MouseSource: [CursorCommand],
        KeyboardSource: [MoveCommand],
      }
  );
  static final keyboard = InputConfig._(
      {
        MouseSource: [CursorCommand],
        KeyboardSource: [AbilityCommand, MoveCommand],
      }
  );
  static final current = InputConfig._(
      {
        KeyboardSource: [MoveCommand, AbilityCommand],
      }
  );

  final Map<Type, List<Type>> _sourceTypeToCommandTypes;

  InputConfig._(this._sourceTypeToCommandTypes);

  bool isAcceptable(InputSource source, Command command) =>
      _sourceTypeToCommandTypes[source.runtimeType]
          ?.contains(command.runtimeType)
          ?? false;
}