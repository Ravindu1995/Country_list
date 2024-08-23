import 'package:country_list/model/nativeName/nativeName.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@freezed
class Name with _$Name {
  const factory Name({
    required String common,
    required String official,
    required Map<String, NativeName> nativeName,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
