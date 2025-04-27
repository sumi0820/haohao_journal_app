// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      sprintId: json['sprintId'] as String,
      epicId: json['epicId'] as String,
      title: json['title'] as String,
      memo: json['memo'] as String?,
      plannedDate: DateTime.parse(json['plannedDate'] as String),
      completedDate: json['completedDate'] == null
          ? null
          : DateTime.parse(json['completedDate'] as String),
      status: $enumDecodeNullable(_$TaskStatusEnumMap, json['status']) ??
          TaskStatus.todo,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sprintId': instance.sprintId,
      'epicId': instance.epicId,
      'title': instance.title,
      'memo': instance.memo,
      'plannedDate': instance.plannedDate.toIso8601String(),
      'completedDate': instance.completedDate?.toIso8601String(),
      'status': _$TaskStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$TaskStatusEnumMap = {
  TaskStatus.todo: 'TODO',
  TaskStatus.doing: 'DOING',
  TaskStatus.done: 'DONE',
};
