// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprint_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SprintReviewImpl _$$SprintReviewImplFromJson(Map<String, dynamic> json) =>
    _$SprintReviewImpl(
      id: json['id'] as String,
      sprintId: json['sprintId'] as String,
      doyaSummary: json['doyaSummary'] as String,
      thanksSummary: json['thanksSummary'] as String,
      continueSummary: json['continueSummary'] as String,
      stuckSummary: json['stuckSummary'] as String,
      changeSummary: json['changeSummary'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SprintReviewImplToJson(_$SprintReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sprintId': instance.sprintId,
      'doyaSummary': instance.doyaSummary,
      'thanksSummary': instance.thanksSummary,
      'continueSummary': instance.continueSummary,
      'stuckSummary': instance.stuckSummary,
      'changeSummary': instance.changeSummary,
      'createdAt': instance.createdAt.toIso8601String(),
    };
