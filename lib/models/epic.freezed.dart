// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Epic _$EpicFromJson(Map<String, dynamic> json) {
  return _Epic.fromJson(json);
}

/// @nodoc
mixin _$Epic {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  /// Serializes this Epic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Epic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpicCopyWith<Epic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpicCopyWith<$Res> {
  factory $EpicCopyWith(Epic value, $Res Function(Epic) then) =
      _$EpicCopyWithImpl<$Res, Epic>;
  @useResult
  $Res call({String id, String name, String? color});
}

/// @nodoc
class _$EpicCopyWithImpl<$Res, $Val extends Epic>
    implements $EpicCopyWith<$Res> {
  _$EpicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Epic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpicImplCopyWith<$Res> implements $EpicCopyWith<$Res> {
  factory _$$EpicImplCopyWith(
          _$EpicImpl value, $Res Function(_$EpicImpl) then) =
      __$$EpicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? color});
}

/// @nodoc
class __$$EpicImplCopyWithImpl<$Res>
    extends _$EpicCopyWithImpl<$Res, _$EpicImpl>
    implements _$$EpicImplCopyWith<$Res> {
  __$$EpicImplCopyWithImpl(_$EpicImpl _value, $Res Function(_$EpicImpl) _then)
      : super(_value, _then);

  /// Create a copy of Epic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
  }) {
    return _then(_$EpicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpicImpl implements _Epic {
  const _$EpicImpl({required this.id, required this.name, this.color});

  factory _$EpicImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpicImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? color;

  @override
  String toString() {
    return 'Epic(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  /// Create a copy of Epic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpicImplCopyWith<_$EpicImpl> get copyWith =>
      __$$EpicImplCopyWithImpl<_$EpicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpicImplToJson(
      this,
    );
  }
}

abstract class _Epic implements Epic {
  const factory _Epic(
      {required final String id,
      required final String name,
      final String? color}) = _$EpicImpl;

  factory _Epic.fromJson(Map<String, dynamic> json) = _$EpicImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get color;

  /// Create a copy of Epic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpicImplCopyWith<_$EpicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
