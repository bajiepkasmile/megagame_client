import 'package:megagame_client/data/input/sources/input_event.dart';
import 'package:megagame_client/data/input/sources/input_source.dart';
import 'package:megagame_client/data/input/sources/speech/events/attack_event.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechSource extends InputSource {

  SpeechToText? _speechToText;

  bool listening = false;

  @override
  List<InputEvent> get events => [AttackEvent()];

  @override
  void onSubscribe() async {
    _speechToText = SpeechToText();
    await _speechToText?.initialize(
      onStatus: (status) {
        if (status == "notListening") {
          listening = false;
          _listen();
        }
      }
    );
    _listen();
  }

  @override
  void onUnsubscribe() {
    _speechToText?.cancel();
  }

  void _listen() async {
    if (listening) {
      return;
    }

    listening = true;

    await _speechToText?.listen(
      onResult: (result) {
        if (!listening) {
          return;
        }

        final isSuccessful = handle(result);
        if (isSuccessful) {
          listening = false;
          _speechToText?.stop();
        }
      },
      listenFor: const Duration(seconds: 2),
    );
  }
}