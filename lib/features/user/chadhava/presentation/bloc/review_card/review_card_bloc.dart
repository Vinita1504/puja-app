import 'package:flutter_bloc/flutter_bloc.dart';
import 'review_card_event.dart';
import 'review_card_state.dart';

/// Review card BLoC
///
/// Manages the expansion state of review cards.
/// Tracks which reviews are expanded by their IDs.
class ReviewCardBloc extends Bloc<ReviewCardEvent, ReviewCardState> {
  ReviewCardBloc() : super(const ReviewCardState()) {
    on<ReviewExpansionToggled>(_onReviewExpansionToggled);
  }

  void _onReviewExpansionToggled(
    ReviewExpansionToggled event,
    Emitter<ReviewCardState> emit,
  ) {
    final newExpandedIds = Set<String>.from(state.expandedReviewIds);
    if (newExpandedIds.contains(event.reviewId)) {
      newExpandedIds.remove(event.reviewId);
    } else {
      newExpandedIds.add(event.reviewId);
    }
    emit(state.copyWith(expandedReviewIds: newExpandedIds));
  }
}

