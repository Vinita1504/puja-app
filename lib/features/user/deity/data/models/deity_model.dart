import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/deity.dart';

part 'deity_model.freezed.dart';
part 'deity_model.g.dart';

/// Deity model (Data layer)
///
/// Data transfer object for deities.
@freezed
class DeityModel with _$DeityModel {
  const factory DeityModel({
    /// Unique identifier for the deity
    required String id,

    /// Name of the deity, must be unique across all deities
    required String name,

    /// Optional mythological or historical story associated with the deity
    String? story,

    /// Optional URL to the main image of the deity
    @JsonKey(name: 'imageUrl') String? imageUrl,

    /// Optional URL to a smaller thumbnail version of the deity image
    @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,

    /// Whether this deity is currently active and visible in the system
    @Default(true) @JsonKey(name: 'isActive') bool isActive,

    /// Timestamp when the deity record was created
    @JsonKey(name: 'createdAt') required DateTime createdAt,

    /// Timestamp when the deity record was last updated
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
  }) = _DeityModel;

  const DeityModel._();

  /// Convert to entity (Domain layer)
  DeityEntity toEntity() {
    return DeityEntity(
      id: id,
      name: name,
      story: story,
      imageUrl: imageUrl,
      thumbnailUrl: thumbnailUrl,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  /// Create from entity
  factory DeityModel.fromEntity(DeityEntity entity) {
    return DeityModel(
      id: entity.id,
      name: entity.name,
      story: entity.story,
      imageUrl: entity.imageUrl,
      thumbnailUrl: entity.thumbnailUrl,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  /// Create from JSON
  factory DeityModel.fromJson(Map<String, dynamic> json) =>
      _$DeityModelFromJson(json);
}

