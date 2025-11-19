import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/travel_detail.dart';
import '../../domain/entities/travel_mode.dart';

part 'travel_detail_model.freezed.dart';
part 'travel_detail_model.g.dart';

/// TravelDetail model (Data layer)
///
/// Data transfer object for travel details.
@freezed
class TravelDetailModel with _$TravelDetailModel {
  const factory TravelDetailModel({
    /// Unique identifier for the travel detail entry
    required String id,

    /// Foreign key reference to the temple this travel information is for
    @JsonKey(name: 'temple_id') required String templeId,

    /// Transportation mode to reach the temple: AIRPLANE, TRAIN, or ROAD
    @JsonKey(
      name: 'mode',
      fromJson: _travelModeFromJson,
      toJson: _travelModeToJson,
    )
    required TravelMode mode,

    /// Full descriptive text providing detailed travel instructions and information
    required String details,
  }) = _TravelDetailModel;

  const TravelDetailModel._();

  /// Convert to entity (Domain layer)
  TravelDetailEntity toEntity() {
    return TravelDetailEntity(
      id: id,
      templeId: templeId,
      mode: mode,
      details: details,
    );
  }

  /// Create from entity
  factory TravelDetailModel.fromEntity(TravelDetailEntity entity) {
    return TravelDetailModel(
      id: entity.id,
      templeId: entity.templeId,
      mode: entity.mode,
      details: entity.details,
    );
  }

  /// Create from JSON
  factory TravelDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TravelDetailModelFromJson(json);
}

/// Helper function to convert JSON string to TravelMode enum
TravelMode _travelModeFromJson(String json) {
  switch (json.toUpperCase()) {
    case 'AIRPLANE':
      return TravelMode.airplane;
    case 'TRAIN':
      return TravelMode.train;
    case 'ROAD':
      return TravelMode.road;
    default:
      throw ArgumentError('Unknown TravelMode: $json');
  }
}

/// Helper function to convert TravelMode enum to JSON string
String _travelModeToJson(TravelMode mode) {
  switch (mode) {
    case TravelMode.airplane:
      return 'AIRPLANE';
    case TravelMode.train:
      return 'TRAIN';
    case TravelMode.road:
      return 'ROAD';
  }
}
