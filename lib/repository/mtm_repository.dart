import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mouth_to_mouth/model/mtm_english_data.dart';

class MtmRepository {
  List<QueryDocumentSnapshot<MtmEnglishData>> mtmData = <QueryDocumentSnapshot<MtmEnglishData>>[];


  Future<void> fetchMtmAllData() async {
    final mtmDataCollection = FirebaseFirestore.instance
        .collection('mtm_data_id')
        .withConverter<MtmEnglishData>(
            fromFirestore: (snapshot, _) => MtmEnglishData.fromJson(snapshot.data()!),
            toFirestore: (mtm_data, _) => mtm_data.toJson());

    List<QueryDocumentSnapshot<MtmEnglishData>> data =
        await mtmDataCollection.get().then((value) => value.docs);
    mtmData.clear();
    mtmData = data;
  }

  Future<void> fetchMtmDataWithRange({required int start, required int end}) async {
    final mtmDataCollection = FirebaseFirestore.instance
        .collection('mtm_data_id')
        .withConverter<MtmEnglishData>(
        fromFirestore: (snapshot, _) => MtmEnglishData.fromJson(snapshot.data()!),
        toFirestore: (mtm_data, _) => mtm_data.toJson());

    List<QueryDocumentSnapshot<MtmEnglishData>> data =
    await mtmDataCollection.orderBy('id').startAt([start]).endAt([end]).get().then((value) => value.docs);
    mtmData.clear();
    mtmData = data;
  }
}
