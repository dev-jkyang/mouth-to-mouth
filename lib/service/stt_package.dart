
import 'package:get/get.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SttModule extends GetxController{
  final SpeechToText _speechToText = SpeechToText();
  var resultStringYes = ''.obs;
  var resultStringNo = ''.obs;
  var isListeningYes = false.obs;
  var isListeningNo = false.obs;

  SpeechToText get stt => _speechToText;



  init() async{
    await _speechToText.initialize().then((value) => print('stt init : $value'));
  }

  startListening(bool yn) async {
    await _speechToText.listen(onResult: yn ? onSpeechResultYes : onSpeechResultNo);
  }

  onSpeechResultYes(SpeechRecognitionResult result) {
    resultStringYes.value = result.recognizedWords;
    isListeningYes.value = !result.finalResult;
    print('result Yes : ${result.finalResult}');
  }

  onSpeechResultNo(SpeechRecognitionResult result) {
    resultStringNo.value = result.recognizedWords;
    isListeningNo.value = !result.finalResult;
    print('result No: ${result.finalResult}');
  }

  stopListening() async {
    await _speechToText.stop();
  }

}