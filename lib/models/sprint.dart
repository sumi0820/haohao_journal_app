import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprint.freezed.dart';
part 'sprint.g.dart';

@freezed
class Sprint with _$Sprint {
  const factory Sprint({
    required String id,
    required DateTime startDate,
    required DateTime endDate,
  }) = _Sprint;

  factory Sprint.fromJson(Map<String, dynamic> json) => _$SprintFromJson(json);
}
