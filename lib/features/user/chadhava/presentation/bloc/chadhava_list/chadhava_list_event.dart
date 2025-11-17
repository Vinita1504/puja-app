import 'package:freezed_annotation/freezed_annotation.dart';

part 'chadhava_list_event.freezed.dart';

/// Chadhava list events
@freezed
class ChadhavaListEvent with _$ChadhavaListEvent {
  /// Load initial chadhava offerings list
  const factory ChadhavaListEvent.chadhavaListLoaded() = ChadhavaListLoaded;

  /// Update selected category filter
  const factory ChadhavaListEvent.categorySelected({
    required String category,
  }) = CategorySelected;

  /// Update search query
  const factory ChadhavaListEvent.searchQueryChanged({
    required String query,
  }) = SearchQueryChanged;
}

