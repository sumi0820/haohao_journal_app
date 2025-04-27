// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sprint _$SprintFromJson(Map<String, dynamic> json) {
  return _Sprint.fromJson(json);
}

/// @nodoc
mixin _$Sprint {
  String get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Serializes this Sprint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sprint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SprintCopyWith<Sprint> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintCopyWith<$Res> {
  factory $SprintCopyWith(Sprint value, $Res Function(Sprint) then) =
      _$SprintCopyWithImpl<$Res, Sprint>;
  @useResult
  $Res call({String id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$SprintCopyWithImpl<$Res, $Val extends Sprint>
    implements $SprintCopyWith<$Res> {
  _$SprintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sprint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SprintImplCopyWith<$Res> implements $SprintCopyWith<$Res> {
  factory _$$SprintImplCopyWith(
          _$SprintImpl value, $Res Function(_$SprintImpl) then) =
      __$$SprintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$SprintImplCopyWithImpl<$Res>
    extends _$SprintCopyWithImpl<$Res, _$SprintImpl>
    implements _$$SprintImplCopyWith<$Res> {
  __$$SprintImplCopyWithImpl(
      _$SprintImpl _value, $Res Function(_$SprintImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sprint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$SprintImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SprintImpl implements _Sprint {
  const _$SprintImpl(
      {required this.id, required this.startDate, required this.endDate});

  factory _$SprintImpl.fromJson(Map<String, dynamic> json) =>
      _$$SprintImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'Sprint(id: $id, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SprintImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate);

  /// Create a copy of Sprint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SprintImplCopyWith<_$SprintImpl> get copyWith =>
      __$$SprintImplCopyWithImpl<_$SprintImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SprintImplToJson(
      this,
    );
  }
}

abstract class _Sprint implements Sprint {
  const factory _Sprint(
      {required final String id,
      required final DateTime startDate,
      required final DateTime endDate}) = _$SprintImpl;

  factory _Sprint.fromJson(Map<String, dynamic> json) = _$SprintImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;

  /// Create a copy of Sprint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SprintImplCopyWith<_$SprintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
