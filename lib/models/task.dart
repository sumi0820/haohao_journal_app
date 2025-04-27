import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

enum TaskStatus {
  @JsonValue('TODO')
  todo,
  @JsonValue('DOING')
  doing,
  @JsonValue('DONE')
  done,
}

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String sprintId,
    required String epicId,
    required String title,
    String? memo,
    required DateTime plannedDate,
    DateTime? completedDate,
    @Default(TaskStatus.todo) TaskStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
