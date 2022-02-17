import 'package:flutter/foundation.dart';
import 'package:megagame_client/data/input/commands/command.dart';
import 'package:megagame_client/data/input/sources/input_event.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

abstract class SpeechEvent implements InputEvent<SpeechRecognitionResult> {

  @override
  bool isAcceptable(SpeechRecognitionResult value) =>
      word == value.recognizedWords;

  @override
  Command createCommand(SpeechRecognitionResult value) => command;

  @protected
  abstract final String word;

  @protected
  abstract final Command command;
}