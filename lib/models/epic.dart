import 'package:freezed_annotation/freezed_annotation.dart';

part 'epic.freezed.dart';
part 'epic.g.dart';

@freezed
class Epic with _$Epic {
  const factory Epic({
    required String id,
    required String name,
    String? color,
  }) = _Epic;

  factory Epic.fromJson(Map<String, dynamic> json) => _$EpicFromJson(json);
}
