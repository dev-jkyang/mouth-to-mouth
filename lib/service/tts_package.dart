import 'dart:io';

import 'package:flutter_tts/flutter_tts.dart';

class TtsModule {
  static final TtsModule instance = TtsModule._internal();
  factory TtsModule() => instance;
  TtsModule._internal();

  FlutterTts flutterTts = FlutterTts();

  startTts({required String sentence}) async{
      await flutterTts.speak(sentence);
  }


  //main_page 에서 init
  setOption() async {
    if(Platform.isIOS) {
      await flutterTts.setSharedInstance(true);
      await flutterTts.setIosAudioCategory(
          IosTextToSpeechAudioCategory.ambient,
          [
            IosTextToSpeechAudioCategoryOptions.allowBluetooth,
            IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
            IosTextToSpeechAudioCategoryOptions.mixWithOthers
          ],
          IosTextToSpeechAudioMode.voicePrompt);
    }

    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.awaitSynthCompletion(true);

    await flutterTts.setLanguage("en-US");
    await flutterTts.setSpeechRate(0.6);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.1);
    await flutterTts.isLanguageAvailable("en-US");

// iOS, Android and Web only
//     await flutterTts.pause();
    await flutterTts.setVoice({"name": "Karen", "locale": "en-US"});

  }


}
