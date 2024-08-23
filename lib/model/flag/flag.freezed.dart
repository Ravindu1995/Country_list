// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Flag _$FlagFromJson(Map<String, dynamic> json) {
  return _Flag.fromJson(json);
}

/// @nodoc
mixin _$Flag {
  String? get png => throw _privateConstructorUsedError;
  String? get svg => throw _privateConstructorUsedError;
  String? get alt => throw _privateConstructorUsedError;

  /// Serializes this Flag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlagCopyWith<Flag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagCopyWith<$Res> {
  factory $FlagCopyWith(Flag value, $Res Function(Flag) then) =
      _$FlagCopyWithImpl<$Res, Flag>;
  @useResult
  $Res call({String? png, String? svg, String? alt});
}

/// @nodoc
class _$FlagCopyWithImpl<$Res, $Val extends Flag>
    implements $FlagCopyWith<$Res> {
  _$FlagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = freezed,
    Object? svg = freezed,
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
      svg: freezed == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagImplCopyWith<$Res> implements $FlagCopyWith<$Res> {
  factory _$$FlagImplCopyWith(
          _$FlagImpl value, $Res Function(_$FlagImpl) then) =
      __$$FlagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? png, String? svg, String? alt});
}

/// @nodoc
class __$$FlagImplCopyWithImpl<$Res>
    extends _$FlagCopyWithImpl<$Res, _$FlagImpl>
    implements _$$FlagImplCopyWith<$Res> {
  __$$FlagImplCopyWithImpl(_$FlagImpl _value, $Res Function(_$FlagImpl) _then)
      : super(_value, _then);

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = freezed,
    Object? svg = freezed,
    Object? alt = freezed,
  }) {
    return _then(_$FlagImpl(
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
      svg: freezed == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagImpl extends _Flag {
  const _$FlagImpl({this.png, this.svg, this.alt}) : super._();

  factory _$FlagImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagImplFromJson(json);

  @override
  final String? png;
  @override
  final String? svg;
  @override
  final String? alt;

  @override
  String toString() {
    return 'Flag(png: $png, svg: $svg, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagImpl &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.svg, svg) || other.svg == svg) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, png, svg, alt);

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagImplCopyWith<_$FlagImpl> get copyWith =>
      __$$FlagImplCopyWithImpl<_$FlagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagImplToJson(
      this,
    );
  }
}

abstract class _Flag extends Flag {
  const factory _Flag(
      {final String? png, final String? svg, final String? alt}) = _$FlagImpl;
  const _Flag._() : super._();

  factory _Flag.fromJson(Map<String, dynamic> json) = _$FlagImpl.fromJson;

  @override
  String? get png;
  @override
  String? get svg;
  @override
  String? get alt;

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlagImplCopyWith<_$FlagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
