import 'dart:io';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:path_provider/path_provider.dart';

class RecordingModule {
  static final RecordingModule instance = RecordingModule._internal();

  factory RecordingModule() => instance;

  RecordingModule._internal();

  final FlutterSoundPlayer _myPlayer = FlutterSoundPlayer();
  final FlutterSoundRecorder _myRecorder = FlutterSoundRecorder();
  var _path = '';


  _makeFilePath () async{
    var fileDirectory = await getApplicationDocumentsDirectory();
    _path = fileDirectory.path;
    // print('filePath : ${fileDirectory.path}');
  }

  openRecorder() {
    _makeFilePath();
    _myRecorder.openRecorder().then((value) => print('openRecorder $value'));
  }
  
  closeRecorder() {
    _myRecorder.closeRecorder();
  }

  Future<void> startRecord(String fileName) async {
    await _myRecorder.startRecorder(
      toFile: '$_path/$fileName.mp4',
      codec: Codec.aacMP4,
    );
  }

  Future<void> stopRecorder() async {
    await _myRecorder.stopRecorder();
  }
  
  openPlayer() {
    _myPlayer.openPlayer().then((value) => print(value));
  }

  void play(String fileName) async {
    await _myPlayer.startPlayer(
        fromURI: '$_path/$fileName.mp4',
        codec: Codec.aacMP4,
        whenFinished: (){

        }
    );
  }

  Future<void> stopPlayer() async {
    await _myPlayer.stopPlayer();
  }

  bool fileExist(String fileName) {
    return File('$_path/$fileName.mp4').existsSync();
  }

}
