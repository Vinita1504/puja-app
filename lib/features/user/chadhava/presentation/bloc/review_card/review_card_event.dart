import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_card_event.freezed.dart';

/// Review card events
@freezed
class ReviewCardEvent with _$ReviewCardEvent {
  /// Toggles the expansion state for a specific review
  const factory ReviewCardEvent.reviewExpansionToggled({
    required String reviewId,
  }) = ReviewExpansionToggled;
}
