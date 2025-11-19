import 'package:freezed_annotation/freezed_annotation.dart';
import 'travel_mode.dart';

part 'travel_detail.freezed.dart';

/// TravelDetail entity (Domain layer)
///
/// Represents travel information for reaching a temple.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class TravelDetailEntity with _$TravelDetailEntity {
  const factory TravelDetailEntity({
    /// Unique identifier for the travel detail entry, auto-generated using UUID
    required String id,

    /// Foreign key reference to the temple this travel information is for
    required String templeId,

    /// Transportation mode to reach the temple: AIRPLANE, TRAIN, or ROAD
    required TravelMode mode,

    /// Full descriptive text providing detailed travel instructions and information
    required String details,
  }) = _TravelDetailEntity;
}
