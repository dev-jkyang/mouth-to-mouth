import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mouth_to_mouth/repository/mtm_repository.dart';
import 'package:mouth_to_mouth/view_model_controller/mtm_controller.dart';

Future<Object?> ShowOptionDialog(BuildContext context, {required ValueChanged onClosed}) {
  MtmController vm = Get.put(MtmController());
  bool isRandom = false;
  bool isAuto = false;
  int selectStart = 0;
  int selectEnd = 99;
  MtmRepository aaa = MtmRepository();

  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'option',
    pageBuilder: (context, animation, secondaryAni) => Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: MediaQuery.of(context).size.height / 2,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '범위',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 200,
                    child: CupertinoPicker(
                      useMagnifier: true,
                      magnification: 1.3,
                      itemExtent: 40,
                      squeeze: 1.2,
                      scrollController: FixedExtentScrollController(initialItem: selectStart),
                      onSelectedItemChanged: (val) {
                        selectStart = val;
                      },
                      children: [
                        ...List.generate(
                            100, (index) => Center(child: Text((index + 1).toString()))),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 200,
                    child: CupertinoPicker(
                      useMagnifier: true,
                      magnification: 1.3,
                      itemExtent: 40,
                      squeeze: 1.2,
                      scrollController: FixedExtentScrollController(initialItem: selectEnd),
                      onSelectedItemChanged: (val) {
                        selectEnd = val + 1;
                      },
                      children: [
                        ...List.generate(100, (index) => Center(child: Text((index + 1).toString()))),
                      ],
                    ),
                  ),
                ],
              ),
              StatefulBuilder(builder: (context, newState) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '순차/랜덤',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        CupertinoSwitch(
                          value: isRandom,
                          onChanged: (val) {
                            newState(() {
                              isRandom = !isRandom;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '자동으로 넘기기',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        CupertinoSwitch(
                          value: isAuto,
                          onChanged: (val) {
                            newState(() {
                              isAuto = !isAuto;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                );
              }),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () async{
                    final rageData = await vm.getMtmDataWithRange(start: selectStart, end: selectEnd, isRandom: isRandom, isAuto: isAuto);
                  },
                  child: Text(
                    '시작',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.blue),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  ).then(onClosed);
}
