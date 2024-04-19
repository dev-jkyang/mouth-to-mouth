import 'package:freezed_annotation/freezed_annotation.dart';

part 'method.freezed.dart';

@freezed
class Method with _$Method {
  const Method._();

  const factory Method({
    required String name,
    required double version,
  }) = _Method;

  void printMethod() {
    print('$name : $version');
  }
}
