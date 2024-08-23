// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nativeName.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NativeName _$NativeNameFromJson(Map<String, dynamic> json) {
  return _NativeName.fromJson(json);
}

/// @nodoc
mixin _$NativeName {
  String get official => throw _privateConstructorUsedError;
  String get common => throw _privateConstructorUsedError;

  /// Serializes this NativeName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NativeNameCopyWith<NativeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NativeNameCopyWith<$Res> {
  factory $NativeNameCopyWith(
          NativeName value, $Res Function(NativeName) then) =
      _$NativeNameCopyWithImpl<$Res, NativeName>;
  @useResult
  $Res call({String official, String common});
}

/// @nodoc
class _$NativeNameCopyWithImpl<$Res, $Val extends NativeName>
    implements $NativeNameCopyWith<$Res> {
  _$NativeNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? official = null,
    Object? common = null,
  }) {
    return _then(_value.copyWith(
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NativeNameImplCopyWith<$Res>
    implements $NativeNameCopyWith<$Res> {
  factory _$$NativeNameImplCopyWith(
          _$NativeNameImpl value, $Res Function(_$NativeNameImpl) then) =
      __$$NativeNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String official, String common});
}

/// @nodoc
class __$$NativeNameImplCopyWithImpl<$Res>
    extends _$NativeNameCopyWithImpl<$Res, _$NativeNameImpl>
    implements _$$NativeNameImplCopyWith<$Res> {
  __$$NativeNameImplCopyWithImpl(
      _$NativeNameImpl _value, $Res Function(_$NativeNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? official = null,
    Object? common = null,
  }) {
    return _then(_$NativeNameImpl(
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NativeNameImpl implements _NativeName {
  const _$NativeNameImpl({required this.official, required this.common});

  factory _$NativeNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NativeNameImplFromJson(json);

  @override
  final String official;
  @override
  final String common;

  @override
  String toString() {
    return 'NativeName(official: $official, common: $common)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NativeNameImpl &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.common, common) || other.common == common));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, official, common);

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NativeNameImplCopyWith<_$NativeNameImpl> get copyWith =>
      __$$NativeNameImplCopyWithImpl<_$NativeNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NativeNameImplToJson(
      this,
    );
  }
}

abstract class _NativeName implements NativeName {
  const factory _NativeName(
      {required final String official,
      required final String common}) = _$NativeNameImpl;

  factory _NativeName.fromJson(Map<String, dynamic> json) =
      _$NativeNameImpl.fromJson;

  @override
  String get official;
  @override
  String get common;

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NativeNameImplCopyWith<_$NativeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
