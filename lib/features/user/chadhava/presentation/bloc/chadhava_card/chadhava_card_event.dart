import 'package:freezed_annotation/freezed_annotation.dart';

part 'chadhava_card_event.freezed.dart';

/// Chadhava card events
@freezed
class ChadhavaCardEvent with _$ChadhavaCardEvent {
  /// Toggles the description expansion state
  const factory ChadhavaCardEvent.descriptionExpansionToggled() =
      DescriptionExpansionToggled;
}
