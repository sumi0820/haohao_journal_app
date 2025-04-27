// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyReviewImpl _$$DailyReviewImplFromJson(Map<String, dynamic> json) =>
    _$DailyReviewImpl(
      id: json['id'] as String,
      sprintId: json['sprintId'] as String,
      date: DateTime.parse(json['date'] as String),
      doneSummary: json['doneSummary'] as String,
      feelingSummary: json['feelingSummary'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$DailyReviewImplToJson(_$DailyReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sprintId': instance.sprintId,
      'date': instance.date.toIso8601String(),
      'doneSummary': instance.doneSummary,
      'feelingSummary': instance.feelingSummary,
      'createdAt': instance.createdAt.toIso8601String(),
    };
