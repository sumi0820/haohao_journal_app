import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_review.freezed.dart';
part 'daily_review.g.dart';

@freezed
class DailyReview with _$DailyReview {
  const factory DailyReview({
    required String id,
    required String sprintId,
    required DateTime date,
    required String doneSummary,
    required String feelingSummary,
    required DateTime createdAt,
  }) = _DailyReview;

  factory DailyReview.fromJson(Map<String, dynamic> json) =>
      _$DailyReviewFromJson(json);
}
