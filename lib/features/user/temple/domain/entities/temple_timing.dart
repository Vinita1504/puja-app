import 'package:freezed_annotation/freezed_annotation.dart';

part 'temple_timing.freezed.dart';

/// TempleTiming entity (Domain layer)
///
/// Represents timing information for a temple.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class TempleTimingEntity with _$TempleTimingEntity {
  const factory TempleTimingEntity({
    /// Unique identifier for the temple timing entry, auto-generated using UUID
    required String id,

    /// Foreign key reference to the temple this timing belongs to
    required String templeId,

    /// Descriptive label for the timing period, e.g., "Morning Aarti", "Temple Opening"
    required String label,

    /// Start time of the timing period in string format, e.g., "07:00 AM"
    required String startTime,

    /// End time of the timing period in string format, e.g., "08:00 AM"
    required String endTime,
  }) = _TempleTimingEntity;
}

