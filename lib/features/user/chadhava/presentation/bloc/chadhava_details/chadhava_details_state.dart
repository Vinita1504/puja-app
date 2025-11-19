import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/chadhava.dart';
import '../../../domain/entities/chadhava_offering.dart';
import '../../../domain/entities/review.dart';
import '../../../domain/entities/faq_item.dart';

part 'chadhava_details_state.freezed.dart';

/// Chadhava details state
@freezed
class ChadhavaDetailsState with _$ChadhavaDetailsState {
  /// Initial state
  const factory ChadhavaDetailsState.initial() = _Initial;

  /// Loading state
  const factory ChadhavaDetailsState.loading() = _Loading;

  /// Loaded state with chadhava data
  const factory ChadhavaDetailsState.loaded({
    required ChadhavaEntity chadhava,
    required List<ChadhavaOfferingEntity> offerings,
    required List<Review> reviews,
    required List<FaqItem> faqs,
    @Default(0) int currentImageIndex,
    @Default({}) Set<int> expandedFaqIndices,
    @Default([]) List<ChadhavaOfferingEntity> selectedOfferings,
  }) = _Loaded;

  /// Error state
  const factory ChadhavaDetailsState.error({required String message}) = _Error;
}
