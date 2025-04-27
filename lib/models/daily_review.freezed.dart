// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyReview _$DailyReviewFromJson(Map<String, dynamic> json) {
  return _DailyReview.fromJson(json);
}

/// @nodoc
mixin _$DailyReview {
  String get id => throw _privateConstructorUsedError;
  String get sprintId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get doneSummary => throw _privateConstructorUsedError;
  String get feelingSummary => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DailyReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyReviewCopyWith<DailyReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyReviewCopyWith<$Res> {
  factory $DailyReviewCopyWith(
          DailyReview value, $Res Function(DailyReview) then) =
      _$DailyReviewCopyWithImpl<$Res, DailyReview>;
  @useResult
  $Res call(
      {String id,
      String sprintId,
      DateTime date,
      String doneSummary,
      String feelingSummary,
      DateTime createdAt});
}

/// @nodoc
class _$DailyReviewCopyWithImpl<$Res, $Val extends DailyReview>
    implements $DailyReviewCopyWith<$Res> {
  _$DailyReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sprintId = null,
    Object? date = null,
    Object? doneSummary = null,
    Object? feelingSummary = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sprintId: null == sprintId
          ? _value.sprintId
          : sprintId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doneSummary: null == doneSummary
          ? _value.doneSummary
          : doneSummary // ignore: cast_nullable_to_non_nullable
              as String,
      feelingSummary: null == feelingSummary
          ? _value.feelingSummary
          : feelingSummary // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyReviewImplCopyWith<$Res>
    implements $DailyReviewCopyWith<$Res> {
  factory _$$DailyReviewImplCopyWith(
          _$DailyReviewImpl value, $Res Function(_$DailyReviewImpl) then) =
      __$$DailyReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sprintId,
      DateTime date,
      String doneSummary,
      String feelingSummary,
      DateTime createdAt});
}

/// @nodoc
class __$$DailyReviewImplCopyWithImpl<$Res>
    extends _$DailyReviewCopyWithImpl<$Res, _$DailyReviewImpl>
    implements _$$DailyReviewImplCopyWith<$Res> {
  __$$DailyReviewImplCopyWithImpl(
      _$DailyReviewImpl _value, $Res Function(_$DailyReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sprintId = null,
    Object? date = null,
    Object? doneSummary = null,
    Object? feelingSummary = null,
    Object? createdAt = null,
  }) {
    return _then(_$DailyReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sprintId: null == sprintId
          ? _value.sprintId
          : sprintId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doneSummary: null == doneSummary
          ? _value.doneSummary
          : doneSummary // ignore: cast_nullable_to_non_nullable
              as String,
      feelingSummary: null == feelingSummary
          ? _value.feelingSummary
          : feelingSummary // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyReviewImpl implements _DailyReview {
  const _$DailyReviewImpl(
      {required this.id,
      required this.sprintId,
      required this.date,
      required this.doneSummary,
      required this.feelingSummary,
      required this.createdAt});

  factory _$DailyReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyReviewImplFromJson(json);

  @override
  final String id;
  @override
  final String sprintId;
  @override
  final DateTime date;
  @override
  final String doneSummary;
  @override
  final String feelingSummary;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DailyReview(id: $id, sprintId: $sprintId, date: $date, doneSummary: $doneSummary, feelingSummary: $feelingSummary, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sprintId, sprintId) ||
                other.sprintId == sprintId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.doneSummary, doneSummary) ||
                other.doneSummary == doneSummary) &&
            (identical(other.feelingSummary, feelingSummary) ||
                other.feelingSummary == feelingSummary) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, sprintId, date, doneSummary, feelingSummary, createdAt);

  /// Create a copy of DailyReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyReviewImplCopyWith<_$DailyReviewImpl> get copyWith =>
      __$$DailyReviewImplCopyWithImpl<_$DailyReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyReviewImplToJson(
      this,
    );
  }
}

abstract class _DailyReview implements DailyReview {
  const factory _DailyReview(
      {required final String id,
      required final String sprintId,
      required final DateTime date,
      required final String doneSummary,
      required final String feelingSummary,
      required final DateTime createdAt}) = _$DailyReviewImpl;

  factory _DailyReview.fromJson(Map<String, dynamic> json) =
      _$DailyReviewImpl.fromJson;

  @override
  String get id;
  @override
  String get sprintId;
  @override
  DateTime get date;
  @override
  String get doneSummary;
  @override
  String get feelingSummary;
  @override
  DateTime get createdAt;

  /// Create a copy of DailyReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyReviewImplCopyWith<_$DailyReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
