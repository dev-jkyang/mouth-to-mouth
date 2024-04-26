import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mouth_to_mouth/service/stt_package.dart';
import 'package:mouth_to_mouth/service/tts_package.dart';
import 'package:mouth_to_mouth/service/voice_recording_package.dart';
import 'package:mouth_to_mouth/view_model_controller/mtm_controller.dart';

import '../model/mtm_english_data.dart';

class PracticeModePage extends StatefulWidget {
  final bool isAuto;
  final bool isRandom;
  final List<MtmEnglishData> data;

  const PracticeModePage({
    super.key,
    required this.isAuto,
    required this.isRandom,
    required this.data,
  });

  @override
  State<PracticeModePage> createState() => _PracticeModePageState();
}

class _PracticeModePageState extends State<PracticeModePage> {
  SttModule sttController = Get.put(SttModule());
  var pageIndex = 0.obs;
  var sttYesText = ''.obs;
  var sttNoText = ''.obs;

  var isVoiceRecording_yes = false.obs;
  var isSttRecording_no = false.obs;
  var isVoiceRecording_no = false.obs;

  @override
  void initState() {
    sttController.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '연습모드-1\nMTM ${widget.data.first.id} - ${widget.data.last.id}',
          style: const TextStyle(
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: dataPrompt(context),
    );
  }

  dataPrompt(BuildContext context) {
    final pageController = PageController(viewportFraction: 0.8);
    final containerWidth = (MediaQuery.of(context).size.width - 60);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.data.length,
                controller: pageController,
                onPageChanged: (index) {
                  pageIndex.value = index;
                  sttController.resultStringNo.value = '';
                  sttController.resultStringYes.value = '';
                },
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 5, left: 5),
                    width: containerWidth,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Text('MTM ${widget.data[index].id}'),
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  widget.data[index].question
                                      .replaceFirst('${widget.data[index].id}.', ''),
                                  style: Theme.of(context).textTheme.headlineLarge,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () async {
                                await TtsModule.instance
                                    .startTts(sentence: widget.data[index].question);
                              },
                              child: const Icon(Icons.volume_up),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                  width: containerWidth,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Obx(() => Text(
                              widget.data[pageIndex.value].answerYes,
                              style: Theme.of(context).textTheme.bodyLarge,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () async {
                            await TtsModule.instance
                                .startTts(sentence: widget.data[pageIndex.value].answerYes);
                          },
                          child: const Icon(Icons.volume_up),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             GestureDetector(
                              onTap: () {
                                sttController.stt.isListening
                                    ? sttController.stopListening()
                                    : sttController.startListening(true);

                                sttController.isListeningYes.value = !sttController.isListeningYes.value;
                              },
                              child: Obx(() => Icon(sttController.isListeningYes.value
                                  ? Icons.stop_circle_outlined : Icons.mic)),
                            ),
                            GestureDetector(
                              onTap: () {
                                isVoiceRecording_yes.value
                                    ? RecordingModule.instance.stopRecorder()
                                    : RecordingModule.instance.startRecord('mtm_${widget.data[pageIndex.value].id}_yes');

                                isVoiceRecording_yes.value = !isVoiceRecording_yes.value;
                              },
                              child: Obx(
                                () => Icon(
                                  isVoiceRecording_yes.value
                                      ? Icons.stop_circle_outlined
                                      : Icons.fiber_manual_record,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.white38,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Obx(
                          () => Center(child: Text(sttController.resultStringYes.toString())),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if(RecordingModule.instance.fileExist('mtm_${widget.data[pageIndex.value].id}_yes')) {
                          RecordingModule.instance.play('mtm_${widget.data[pageIndex.value].id}_yes');
                        }
                      },
                      child: Icon(
                        Icons.play_circle_outline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                width: containerWidth,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Obx(() => Text(
                            widget.data[pageIndex.value].answerNo,
                            style: Theme.of(context).textTheme.bodyLarge,
                          )),
                    ),
                    Flexible(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () async {
                            await TtsModule.instance
                                .startTts(sentence: widget.data[pageIndex.value].answerNo);
                          },
                          child: const Icon(Icons.volume_up),
                        )),
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              sttController.stt.isListening
                                  ? sttController.stopListening()
                                  : sttController.startListening(false);

                              sttController.isListeningNo.value = !sttController.isListeningNo.value;
                            },
                            child: Obx(() => Icon(
                                sttController.isListeningNo.value ? Icons.stop_circle_outlined : Icons.mic)),
                          ),
                          GestureDetector(
                            onTap: () {
                              isVoiceRecording_no.value
                                  ? RecordingModule.instance.stopRecorder()
                                  : RecordingModule.instance.startRecord('mtm_${widget.data[pageIndex.value].id}_no');

                              isVoiceRecording_no.value = !isVoiceRecording_no.value;
                            },
                            child: Obx(
                              () => Icon(
                                isVoiceRecording_no.value
                                    ? Icons.stop_circle_outlined
                                    : Icons.fiber_manual_record,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.white38,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Obx(
                      () => Center(child: Text(sttController.resultStringNo.toString())),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if(RecordingModule.instance.fileExist('mtm_${widget.data[pageIndex.value].id}_no')) {
                          RecordingModule.instance.play('mtm_${widget.data[pageIndex.value].id}_no');
                        }
                      },
                      child: Icon(
                        Icons.play_circle_outline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
