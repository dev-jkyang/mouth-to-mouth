import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mouth_to_mouth/model/mtm_english_data.dart';
import 'package:mouth_to_mouth/repository/mtm_repository.dart';

class MtmController extends GetxController {
  RxList<MtmEnglishData> dataList = <MtmEnglishData>[].obs;
  late List<QueryDocumentSnapshot<MtmEnglishData>> data;
  final MtmRepository _repository = MtmRepository();

  @override
  Future<void> onInit() async{
    data = await _repository.fetchMtmData();
    print('==========================onInit');
    super.onInit();
  }

  Future<List<MtmEnglishData>> getMtmDataWithRange(
      {required int start, required int end, required bool isRandom, required bool isAuto}) async {
    dataList.value = data.map((e) => e.data()).toList();
    return dataList.getRange(start, end).toList();
  }
}
