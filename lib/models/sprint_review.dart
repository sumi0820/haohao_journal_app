import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprint_review.freezed.dart';
part 'sprint_review.g.dart';

@freezed
class SprintReview with _$SprintReview {
  const factory SprintReview({
    required String id,
    required String sprintId,
    required String doyaSummary,
    required String thanksSummary,
    required String continueSummary,
    required String stuckSummary,
    required String changeSummary,
    required DateTime createdAt,
  }) = _SprintReview;

  factory SprintReview.fromJson(Map<String, dynamic> json) =>
      _$SprintReviewFromJson(json);
}
