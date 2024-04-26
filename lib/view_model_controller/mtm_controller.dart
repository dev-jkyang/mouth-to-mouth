import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mouth_to_mouth/model/mtm_english_data.dart';
import 'package:mouth_to_mouth/repository/mtm_repository.dart';

class MtmController extends GetxController {
  RxList<MtmEnglishData> dataList = <MtmEnglishData>[].obs;
  late List<QueryDocumentSnapshot<MtmEnglishData>> data;
  final MtmRepository _repository = MtmRepository();

  RxList<MtmEnglishData> get resultData => dataList;

  @override
  Future<void> onInit() async{
    super.onInit();
  }

  Future<void> getMtmDataWithRange({required int start, required int end}) async {
    await _repository.fetchMtmDataWithRange(start: start+1, end: end+1);
    data = _repository.mtmData;
    dataList.value = data.map((e) => e.data()).toList();
    dataList.getRange(start, end).toList();
  }
}
