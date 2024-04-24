import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'mtm_english_data.freezed.dart';
part 'mtm_english_data.g.dart';

@unfreezed
class MtmEnglishData with _$MtmEnglishData {
  factory MtmEnglishData({
    @JsonSerializable(explicitToJson: true)
    required final int id,
    @JsonKey(name: 'q') required final String question,
    @JsonKey(name: 'y') required final String answerYes,
    @JsonKey(name: 'n') required final String answerNo,
    @Default('') String? yesRecordingPath,
    @Default('') String? noRecordingPath,
  }) = _MtmEnglishData;

  factory MtmEnglishData.fromJson(Map<String, dynamic> json) => _$MtmEnglishDataFromJson(json);


}