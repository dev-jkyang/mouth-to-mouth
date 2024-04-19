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
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'my_question')
  String? get question => throw _privateConstructorUsedError;
  String get answerYes => throw _privateConstructorUsedError;
  String get answerNo => throw _privateConstructorUsedError;

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
      {int id,
      @JsonKey(name: 'my_question') String? question,
      String answerYes,
      String answerNo});
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
    Object? question = freezed,
    Object? answerYes = null,
    Object? answerNo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answerYes: null == answerYes
          ? _value.answerYes
          : answerYes // ignore: cast_nullable_to_non_nullable
              as String,
      answerNo: null == answerNo
          ? _value.answerNo
          : answerNo // ignore: cast_nullable_to_non_nullable
              as String,
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
      {int id,
      @JsonKey(name: 'my_question') String? question,
      String answerYes,
      String answerNo});
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
    Object? question = freezed,
    Object? answerYes = null,
    Object? answerNo = null,
  }) {
    return _then(_$MtmEnglishDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answerYes: null == answerYes
          ? _value.answerYes
          : answerYes // ignore: cast_nullable_to_non_nullable
              as String,
      answerNo: null == answerNo
          ? _value.answerNo
          : answerNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MtmEnglishDataImpl
    with DiagnosticableTreeMixin
    implements _MtmEnglishData {
  const _$MtmEnglishDataImpl(
      {required this.id,
      @JsonKey(name: 'my_question') this.question,
      this.answerYes = 'yes',
      required this.answerNo});

  factory _$MtmEnglishDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MtmEnglishDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'my_question')
  final String? question;
  @override
  @JsonKey()
  final String answerYes;
  @override
  final String answerNo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MtmEnglishData(id: $id, question: $question, answerYes: $answerYes, answerNo: $answerNo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MtmEnglishData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answerYes', answerYes))
      ..add(DiagnosticsProperty('answerNo', answerNo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MtmEnglishDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answerYes, answerYes) ||
                other.answerYes == answerYes) &&
            (identical(other.answerNo, answerNo) ||
                other.answerNo == answerNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, question, answerYes, answerNo);

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
  const factory _MtmEnglishData(
      {required final int id,
      @JsonKey(name: 'my_question') final String? question,
      final String answerYes,
      required final String answerNo}) = _$MtmEnglishDataImpl;

  factory _MtmEnglishData.fromJson(Map<String, dynamic> json) =
      _$MtmEnglishDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'my_question')
  String? get question;
  @override
  String get answerYes;
  @override
  String get answerNo;
  @override
  @JsonKey(ignore: true)
  _$$MtmEnglishDataImplCopyWith<_$MtmEnglishDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
