// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SprintImpl _$$SprintImplFromJson(Map<String, dynamic> json) => _$SprintImpl(
      id: json['id'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$SprintImplToJson(_$SprintImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
