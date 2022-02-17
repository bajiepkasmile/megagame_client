import 'package:megagame_client/data/input/commands/command.dart';

abstract class InputEvent<TValue> {

  bool isAcceptable(TValue value);

  Command createCommand(TValue value);
}