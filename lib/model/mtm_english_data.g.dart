// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtm_english_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MtmEnglishDataImpl _$$MtmEnglishDataImplFromJson(Map<String, dynamic> json) =>
    _$MtmEnglishDataImpl(
      id: json['id'] as int,
      question: json['q'] as String,
      answerYes: json['y'] as String,
      answerNo: json['n'] as String,
      yesRecordingPath: json['yesRecordingPath'] as String? ?? '',
      noRecordingPath: json['noRecordingPath'] as String? ?? '',
    );

Map<String, dynamic> _$$MtmEnglishDataImplToJson(
        _$MtmEnglishDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'q': instance.question,
      'y': instance.answerYes,
      'n': instance.answerNo,
      'yesRecordingPath': instance.yesRecordingPath,
      'noRecordingPath': instance.noRecordingPath,
    };
