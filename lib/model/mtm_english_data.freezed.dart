// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mtm_english_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MtmEnglishData _$MtmEnglishDataFromJson(Map<String, dynamic> json) {
  return _MtmEnglishData.fromJson(json);
}

/// @nodoc
mixin _$MtmEnglishData {
  @JsonSerializable(explicitToJson: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'q')
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'y')
  String get answerYes => throw _privateConstructorUsedError;
  @JsonKey(name: 'n')
  String get answerNo => throw _privateConstructorUsedError;
  String? get yesRecordingPath => throw _privateConstructorUsedError;
  set yesRecordingPath(String? value) => throw _privateConstructorUsedError;
  String? get noRecordingPath => throw _privateConstructorUsedError;
  set noRecordingPath(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MtmEnglishDataCopyWith<MtmEnglishData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MtmEnglishDataCopyWith<$Res> {
  factory $MtmEnglishDataCopyWith(
          MtmEnglishData value, $Res Function(MtmEnglishData) then) =
      _$MtmEnglishDataCopyWithImpl<$Res, MtmEnglishData>;
  @useResult
  $Res call(
      {@JsonSerializable(explicitToJson: true) int id,
      @JsonKey(name: 'q') String question,
      @JsonKey(name: 'y') String answerYes,
      @JsonKey(name: 'n') String answerNo,
      String? yesRecordingPath,
      String? noRecordingPath});
}

/// @nodoc
class _$MtmEnglishDataCopyWithImpl<$Res, $Val extends MtmEnglishData>
    implements $MtmEnglishDataCopyWith<$Res> {
  _$MtmEnglishDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answerYes = null,
    Object? answerNo = null,
    Object? yesRecordingPath = freezed,
    Object? noRecordingPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answerYes: null == answerYes
          ? _value.answerYes
          : answerYes // ignore: cast_nullable_to_non_nullable
              as String,
      answerNo: null == answerNo
          ? _value.answerNo
          : answerNo // ignore: cast_nullable_to_non_nullable
              as String,
      yesRecordingPath: freezed == yesRecordingPath
          ? _value.yesRecordingPath
          : yesRecordingPath // ignore: cast_nullable_to_non_nullable
              as String?,
      noRecordingPath: freezed == noRecordingPath
          ? _value.noRecordingPath
          : noRecordingPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MtmEnglishDataImplCopyWith<$Res>
    implements $MtmEnglishDataCopyWith<$Res> {
  factory _$$MtmEnglishDataImplCopyWith(_$MtmEnglishDataImpl value,
          $Res Function(_$MtmEnglishDataImpl) then) =
      __$$MtmEnglishDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonSerializable(explicitToJson: true) int id,
      @JsonKey(name: 'q') String question,
      @JsonKey(name: 'y') String answerYes,
      @JsonKey(name: 'n') String answerNo,
      String? yesRecordingPath,
      String? noRecordingPath});
}

/// @nodoc
class __$$MtmEnglishDataImplCopyWithImpl<$Res>
    extends _$MtmEnglishDataCopyWithImpl<$Res, _$MtmEnglishDataImpl>
    implements _$$MtmEnglishDataImplCopyWith<$Res> {
  __$$MtmEnglishDataImplCopyWithImpl(
      _$MtmEnglishDataImpl _value, $Res Function(_$MtmEnglishDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answerYes = null,
    Object? answerNo = null,
    Object? yesRecordingPath = freezed,
    Object? noRecordingPath = freezed,
  }) {
    return _then(_$MtmEnglishDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answerYes: null == answerYes
          ? _value.answerYes
          : answerYes // ignore: cast_nullable_to_non_nullable
              as String,
      answerNo: null == answerNo
          ? _value.answerNo
          : answerNo // ignore: cast_nullable_to_non_nullable
              as String,
      yesRecordingPath: freezed == yesRecordingPath
          ? _value.yesRecordingPath
          : yesRecordingPath // ignore: cast_nullable_to_non_nullable
              as String?,
      noRecordingPath: freezed == noRecordingPath
          ? _value.noRecordingPath
          : noRecordingPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MtmEnglishDataImpl
    with DiagnosticableTreeMixin
    implements _MtmEnglishData {
  _$MtmEnglishDataImpl(
      {@JsonSerializable(explicitToJson: true) required this.id,
      @JsonKey(name: 'q') required this.question,
      @JsonKey(name: 'y') required this.answerYes,
      @JsonKey(name: 'n') required this.answerNo,
      this.yesRecordingPath = '',
      this.noRecordingPath = ''});

  factory _$MtmEnglishDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MtmEnglishDataImplFromJson(json);

  @override
  @JsonSerializable(explicitToJson: true)
  final int id;
  @override
  @JsonKey(name: 'q')
  final String question;
  @override
  @JsonKey(name: 'y')
  final String answerYes;
  @override
  @JsonKey(name: 'n')
  final String answerNo;
  @override
  @JsonKey()
  String? yesRecordingPath;
  @override
  @JsonKey()
  String? noRecordingPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MtmEnglishData(id: $id, question: $question, answerYes: $answerYes, answerNo: $answerNo, yesRecordingPath: $yesRecordingPath, noRecordingPath: $noRecordingPath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MtmEnglishData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answerYes', answerYes))
      ..add(DiagnosticsProperty('answerNo', answerNo))
      ..add(DiagnosticsProperty('yesRecordingPath', yesRecordingPath))
      ..add(DiagnosticsProperty('noRecordingPath', noRecordingPath));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MtmEnglishDataImplCopyWith<_$MtmEnglishDataImpl> get copyWith =>
      __$$MtmEnglishDataImplCopyWithImpl<_$MtmEnglishDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MtmEnglishDataImplToJson(
      this,
    );
  }
}

abstract class _MtmEnglishData implements MtmEnglishData {
  factory _MtmEnglishData(
      {@JsonSerializable(explicitToJson: true) required final int id,
      @JsonKey(name: 'q') required final String question,
      @JsonKey(name: 'y') required final String answerYes,
      @JsonKey(name: 'n') required final String answerNo,
      String? yesRecordingPath,
      String? noRecordingPath}) = _$MtmEnglishDataImpl;

  factory _MtmEnglishData.fromJson(Map<String, dynamic> json) =
      _$MtmEnglishDataImpl.fromJson;

  @override
  @JsonSerializable(explicitToJson: true)
  int get id;
  @override
  @JsonKey(name: 'q')
  String get question;
  @override
  @JsonKey(name: 'y')
  String get answerYes;
  @override
  @JsonKey(name: 'n')
  String get answerNo;
  @override
  String? get yesRecordingPath;
  set yesRecordingPath(String? value);
  @override
  String? get noRecordingPath;
  set noRecordingPath(String? value);
  @override
  @JsonKey(ignore: true)
  _$$MtmEnglishDataImplCopyWith<_$MtmEnglishDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
