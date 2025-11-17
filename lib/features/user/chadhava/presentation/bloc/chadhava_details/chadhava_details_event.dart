import 'package:freezed_annotation/freezed_annotation.dart';

part 'chadhava_details_event.freezed.dart';

/// Chadhava details events
@freezed
class ChadhavaDetailsEvent with _$ChadhavaDetailsEvent {
  /// Load chadhava details by ID
  const factory ChadhavaDetailsEvent.chadhavaDetailsLoaded({
    required String chadhavaId,
  }) = ChadhavaDetailsLoaded;

  /// Toggle offerings list expansion
  const factory ChadhavaDetailsEvent.offeringsListExpanded() =
      OfferingsListExpanded;

  /// Toggle FAQ item expansion
  const factory ChadhavaDetailsEvent.faqItemToggled({
    required int index,
  }) = FaqItemToggled;

  /// Handle share button tap
  const factory ChadhavaDetailsEvent.shareButtonTapped() =
      ShareButtonTapped;

  /// Update carousel image index
  const factory ChadhavaDetailsEvent.carouselImageChanged({
    required int index,
  }) = CarouselImageChanged;

  /// Add offering to selected list
  const factory ChadhavaDetailsEvent.offeringAdded({
    required String offeringId,
  }) = OfferingAdded;

  /// Remove offering from selected list
  const factory ChadhavaDetailsEvent.offeringRemoved({
    required String offeringId,
  }) = OfferingRemoved;

  /// Continue button tapped
  const factory ChadhavaDetailsEvent.continueButtonTapped() =
      ContinueButtonTapped;
}

