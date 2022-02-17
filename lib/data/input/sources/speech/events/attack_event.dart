import 'package:megagame_client/data/input/commands/ability_command.dart';
import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/models/ability.dart';
import 'package:megagame_client/data/input/sources/speech/speech_event.dart';

class AttackEvent extends SpeechEvent {

  @override
  String get word => "удар";

  @override
  Command get command => AbilityCommand(Ability.space);
}