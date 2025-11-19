import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/temple.dart';

part 'temple_model.freezed.dart';
part 'temple_model.g.dart';

/// Temple model (Data layer)
///
/// Data transfer object for temples.
@freezed
class TempleModel with _$TempleModel {
  const factory TempleModel({
    /// Unique identifier for the temple
    required String id,

    /// Name of the temple as it appears in the application
    required String name,

    /// City where the temple is located
    required String city,

    /// State or province where the temple is located
    required String state,

    /// Country where the temple is located
    required String country,

    /// Optional detailed street address of the temple location
    String? address,

    /// Optional general overview or introduction about the temple
    String? overview,

    /// Optional historical background and significance of the temple
    String? history,

    /// Optional information about the religious or cultural significance
    String? significance,

    /// Optional description of the temple's architectural style and features
    String? architecture,

    /// Optional text describing what offerings are available or accepted
    @JsonKey(name: 'offerings_text') String? offeringsText,

    /// Optional latitude coordinate for mapping and location services
    double? lat,

    /// Optional longitude coordinate for mapping and location services
    double? lng,

    /// Timestamp when the temple record was created
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Timestamp when the temple record was last updated
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _TempleModel;

  const TempleModel._();

  /// Convert to entity (Domain layer)
  TempleEntity toEntity() {
    return TempleEntity(
      id: id,
      name: name,
      city: city,
      state: state,
      country: country,
      address: address,
      overview: overview,
      history: history,
      significance: significance,
      architecture: architecture,
      offeringsText: offeringsText,
      lat: lat,
      lng: lng,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  /// Create from entity
  factory TempleModel.fromEntity(TempleEntity entity) {
    return TempleModel(
      id: entity.id,
      name: entity.name,
      city: entity.city,
      state: entity.state,
      country: entity.country,
      address: entity.address,
      overview: entity.overview,
      history: entity.history,
      significance: entity.significance,
      architecture: entity.architecture,
      offeringsText: entity.offeringsText,
      lat: entity.lat,
      lng: entity.lng,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  /// Create from JSON
  factory TempleModel.fromJson(Map<String, dynamic> json) =>
      _$TempleModelFromJson(json);
}
