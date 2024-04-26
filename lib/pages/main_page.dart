import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mouth_to_mouth/repository/mtm_repository.dart';
import 'package:mouth_to_mouth/service/stt_package.dart';
import 'package:mouth_to_mouth/service/tts_package.dart';
import 'package:mouth_to_mouth/service/voice_recording_package.dart';
import 'package:mouth_to_mouth/view_model_controller/mtm_controller.dart';
import '../components/option_dialog.dart';
import '../model/mtm_english_data.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final mtmDataController = Get.put(MtmController());

  @override
  void initState() {
    //init tts
    TtsModule.instance.setOption();
    // SttModule.instance.init();
    RecordingModule.instance.openRecorder();
    RecordingModule.instance.openPlayer();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          child: Text('나'),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '아무개님!\n오늘도 마투마로 화이팅!',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text('통계화면')),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Flexible(
                        flex: 3,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  ShowOptionDialog(context, onClosed: (_) {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text('연습모드 1')),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(child: Text('연습모드 2')),
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text('인증모드')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
