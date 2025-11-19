import 'package:freezed_annotation/freezed_annotation.dart';

part 'chadhava_card_state.freezed.dart';

/// Chadhava card state
@freezed
class ChadhavaCardState with _$ChadhavaCardState {
  /// Initial state with description expansion status
  const factory ChadhavaCardState({
    @Default(false) bool isDescriptionExpanded,
  }) = _ChadhavaCardState;
}
