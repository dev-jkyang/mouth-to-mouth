import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mouth_to_mouth/model/mtm_english_data.dart';

class MtmRepository {

  Future<List<QueryDocumentSnapshot<MtmEnglishData>>> fetchMtmData() async {
    final mtmData = FirebaseFirestore.instance
        .collection('mtm_data_id')
        .withConverter<MtmEnglishData>(
            fromFirestore: (snapshot, _) => MtmEnglishData.fromJson(snapshot.data()!),
            toFirestore: (mtm_data, _) => mtm_data.toJson());

    List<QueryDocumentSnapshot<MtmEnglishData>> data =
        await mtmData.orderBy('id').startAt([1]).endAt([100]).get().then((value) => value.docs);
    return data;
  }
}
