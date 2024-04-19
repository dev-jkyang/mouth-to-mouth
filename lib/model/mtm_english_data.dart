import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'mtm_english_data.freezed.dart';
part 'mtm_english_data.g.dart';

@freezed
class MtmEnglishData with _$MtmEnglishData {
  @JsonSerializable(explicitToJson: true)
  const factory MtmEnglishData({
    required final int id,
    @JsonKey(name: 'my_question') String? question,
    @Default('') String answerYes,
    required String answerNo,
  }) = _MtmEnglishData;

  factory MtmEnglishData.fromJson(Map<String, dynamic> json) => _$MtmEnglishDataFromJson(json);
}