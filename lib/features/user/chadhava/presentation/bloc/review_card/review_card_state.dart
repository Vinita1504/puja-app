import 'package:freezed_annotation/freezed_annotation.dart';
part 'review_card_state.freezed.dart';

/// Review card state
@freezed
class ReviewCardState with _$ReviewCardState {
  /// State with set of expanded review IDs
  const factory ReviewCardState({
    /// Set of review IDs that are currently expanded
    @Default({}) Set<String> expandedReviewIds,
  }) = _ReviewCardState;
}
