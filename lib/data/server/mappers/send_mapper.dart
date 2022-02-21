import 'package:megagame_client/data/input/commands/command.dart';

abstract class SendMapper<TCommand extends Command> {

  bool isAcceptable(Command command);

  dynamic map(TCommand command);
}