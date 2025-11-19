import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/temple_timing.dart';

part 'temple_timing_model.freezed.dart';
part 'temple_timing_model.g.dart';

/// TempleTiming model (Data layer)
///
/// Data transfer object for temple timings.
@freezed
class TempleTimingModel with _$TempleTimingModel {
  const factory TempleTimingModel({
    /// Unique identifier for the temple timing entry
    required String id,

    /// Foreign key reference to the temple this timing belongs to
    @JsonKey(name: 'temple_id') required String templeId,

    /// Descriptive label for the timing period
    required String label,

    /// Start time of the timing period in string format
    @JsonKey(name: 'start_time') required String startTime,

    /// End time of the timing period in string format
    @JsonKey(name: 'end_time') required String endTime,
  }) = _TempleTimingModel;

  const TempleTimingModel._();

  /// Convert to entity (Domain layer)
  TempleTimingEntity toEntity() {
    return TempleTimingEntity(
      id: id,
      templeId: templeId,
      label: label,
      startTime: startTime,
      endTime: endTime,
    );
  }

  /// Create from entity
  factory TempleTimingModel.fromEntity(TempleTimingEntity entity) {
    return TempleTimingModel(
      id: entity.id,
      templeId: entity.templeId,
      label: entity.label,
      startTime: entity.startTime,
      endTime: entity.endTime,
    );
  }

  /// Create from JSON
  factory TempleTimingModel.fromJson(Map<String, dynamic> json) =>
      _$TempleTimingModelFromJson(json);
}
