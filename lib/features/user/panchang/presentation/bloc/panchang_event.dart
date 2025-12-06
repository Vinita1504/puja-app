import 'package:freezed_annotation/freezed_annotation.dart';

part 'panchang_event.freezed.dart';

/// Panchang events
@freezed
class PanchangEvent with _$PanchangEvent {
  /// Load Panchang data
  const factory PanchangEvent.panchangLoaded() = PanchangLoaded;

  /// Refresh Panchang data
  const factory PanchangEvent.panchangRefreshRequested() =
      PanchangRefreshRequested;
}

