import 'package:flutter_tts/flutter_tts.dart';

class SpeechOutput {

  void speak() async {
    final flutterTts = FlutterTts();

    // await flutterTts.awaitSpeakCompletion(true);
    // await flutterTts.awaitSynthCompletion(true);

    await flutterTts.setLanguage("ru-RU");
    // await flutterTts.setSpeechRate(0.001);
    // await flutterTts.setVolume(1.0);
    // await flutterTts.setPitch(100);

    // await flutterTts.isLanguageAvailable("en-US");
    // await flutterTts.setVoice({"name": "Karen", "locale": "en-AU"});
    // await flutterTts.isLanguageInstalled("en-AU");
    // await flutterTts.areLanguagesInstalled(["en-AU", "en-US"]);
    // await flutterTts.setQueueMode(1);
    // await flutterTts.getMaxSpeechInputLength;

    var result = await flutterTts.speak("Раз два три четыре");
  }
}