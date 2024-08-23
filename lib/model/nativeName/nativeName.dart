import 'package:freezed_annotation/freezed_annotation.dart';

part 'nativeName.freezed.dart';
part 'nativeName.g.dart';

@freezed
class NativeName with _$NativeName {
  const factory NativeName({
    required String official,
    required String common,
  }) = _NativeName;

  factory NativeName.fromJson(Map<String, dynamic> json) =>
      _$NativeNameFromJson(json);
}
