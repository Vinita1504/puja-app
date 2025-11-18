import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/puja.dart';
import '../../../domain/entities/puja_package.dart';
import '../../../../chadhava/domain/entities/faq_item.dart';

part 'puja_details_state.freezed.dart';

/// Puja details state
@freezed
class PujaDetailsState with _$PujaDetailsState {
  /// Initial state
  const factory PujaDetailsState.initial() = _Initial;

  /// Loading state
  const factory PujaDetailsState.loading() = _Loading;

  /// Loaded state with puja data
  const factory PujaDetailsState.loaded({
    required PujaEntity puja,
    required List<PujaPackageEntity> packages,
    required List<FaqItem> faqs,
    @Default(0) int activeTabIndex,
    @Default('Basic') String selectedPackage,
    @Default({}) Set<int> expandedFaqIndices,
    @Default(0) int currentImageIndex,
  }) = _Loaded;

  /// Error state
  const factory PujaDetailsState.error({
    required String message,
  }) = _Error;
}

