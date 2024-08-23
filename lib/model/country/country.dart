import 'package:country_list/model/flag/flag.dart';
import 'package:country_list/model/name/name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const Country._();

  const factory Country({
    required Flag flags,
    required Name name,
    required List<String> capital,
    required String region,
    required Map<String, String> languages,
    required double population,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
