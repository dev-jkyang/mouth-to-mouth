// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtm_english_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MtmEnglishDataImpl _$$MtmEnglishDataImplFromJson(Map<String, dynamic> json) =>
    _$MtmEnglishDataImpl(
      id: json['id'] as int,
      question: json['my_question'] as String?,
      answerYes: json['answerYes'] as String? ?? 'yes',
      answerNo: json['answerNo'] as String,
    );

Map<String, dynamic> _$$MtmEnglishDataImplToJson(
        _$MtmEnglishDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'my_question': instance.question,
      'answerYes': instance.answerYes,
      'answerNo': instance.answerNo,
    };
