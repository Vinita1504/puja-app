import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/chadhava_offering.dart';

part 'chadhava_list_state.freezed.dart';

/// Chadhava list state
@freezed
class ChadhavaListState with _$ChadhavaListState {
  /// Initial state
  const factory ChadhavaListState.initial() = _Initial;

  /// Loading state
  const factory ChadhavaListState.loading() = _Loading;

  /// Loaded state with offerings, filters, and filtered results
  const factory ChadhavaListState.loaded({
    required List<ChadhavaOfferingEntity> offerings,
    @Default('All') String selectedCategory,
    @Default('') String searchQuery,
    required List<String> categories,
    required List<ChadhavaOfferingEntity> filteredOfferings,
  }) = _Loaded;

  /// Error state
  const factory ChadhavaListState.error({
    required String message,
  }) = _Error;
}

