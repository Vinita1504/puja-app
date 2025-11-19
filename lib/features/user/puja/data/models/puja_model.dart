import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/puja.dart';

part 'puja_model.freezed.dart';
part 'puja_model.g.dart';

/// Puja model (Data layer)
///
/// Data transfer object for puja ceremonies.
@freezed
class PujaModel with _$PujaModel {
  const factory PujaModel({
    /// Unique identifier for the puja
    required String id,

    /// Name of the puja ceremony, must be unique across all pujas
    required String name,

    /// Optional foreign key reference to the puja category
    @JsonKey(name: 'category_id') String? categoryId,

    /// Array of image URLs showcasing the puja ceremony
    @Default([]) @JsonKey(name: 'image_urls') List<String> imageUrls,

    /// Array of video URLs demonstrating or explaining the puja ceremony
    @Default([]) @JsonKey(name: 'video_urls') List<String> videoUrls,

    /// Optional duration of the puja ceremony in minutes
    @JsonKey(name: 'duration_minutes') int? durationMinutes,

    /// Whether this puja can be performed online
    @Default(true) @JsonKey(name: 'is_online') bool isOnline,

    /// Start date and time when the puja becomes available
    @JsonKey(name: 'start_datetime') required DateTime startDatetime,

    /// End date and time when the puja availability concludes
    @JsonKey(name: 'end_datetime') required DateTime endDatetime,

    /// Whether this puja is currently active
    @Default(true) @JsonKey(name: 'is_active') bool isActive,

    /// Timestamp when the puja record was created
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Timestamp when the puja record was last updated
    @JsonKey(name: 'updated_at') required DateTime updatedAt,

    /// Optional display title for the puja
    String? title,

    /// Optional detailed description of the puja ceremony
    String? description,

    /// Array of JSON objects containing title and description of puja benefits
    @Default([]) List<Map<String, dynamic>> benefits,

    /// Array of JSON objects containing title and description of puja process steps
    @Default([]) List<Map<String, dynamic>> process,
  }) = _PujaModel;

  const PujaModel._();

  /// Convert to entity (Domain layer)
  PujaEntity toEntity() {
    return PujaEntity(
      id: id,
      name: name,
      categoryId: categoryId,
      imageUrls: imageUrls,
      videoUrls: videoUrls,
      durationMinutes: durationMinutes,
      isOnline: isOnline,
      startDatetime: startDatetime,
      endDatetime: endDatetime,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
      title: title,
      description: description,
      benefits: benefits,
      process: process,
    );
  }

  /// Create from entity
  factory PujaModel.fromEntity(PujaEntity entity) {
    return PujaModel(
      id: entity.id,
      name: entity.name,
      categoryId: entity.categoryId,
      imageUrls: entity.imageUrls,
      videoUrls: entity.videoUrls,
      durationMinutes: entity.durationMinutes,
      isOnline: entity.isOnline,
      startDatetime: entity.startDatetime,
      endDatetime: entity.endDatetime,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      title: entity.title,
      description: entity.description,
      benefits: entity.benefits,
      process: entity.process,
    );
  }

  /// Create from JSON
  factory PujaModel.fromJson(Map<String, dynamic> json) =>
      _$PujaModelFromJson(json);
}
