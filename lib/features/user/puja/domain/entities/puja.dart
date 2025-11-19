import 'package:freezed_annotation/freezed_annotation.dart';

part 'puja.freezed.dart';

/// Puja entity (Domain layer)
///
/// Represents a puja ceremony.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class PujaEntity with _$PujaEntity {
  const factory PujaEntity({
    /// Unique identifier for the puja, auto-generated using cuid
    required String id,

    /// Name of the puja ceremony, must be unique across all pujas
    required String name,

    /// Optional foreign key reference to the puja category this belongs to
    String? categoryId,

    /// Array of image URLs showcasing the puja ceremony and related visuals
    @Default([]) List<String> imageUrls,

    /// Array of video URLs demonstrating or explaining the puja ceremony
    @Default([]) List<String> videoUrls,

    /// Optional duration of the puja ceremony in minutes
    int? durationMinutes,

    /// Whether this puja can be performed online or requires physical presence
    @Default(true) bool isOnline,

    /// Start date and time when the puja becomes available or begins
    required DateTime startDatetime,

    /// End date and time when the puja availability or event concludes
    required DateTime endDatetime,

    /// Whether this puja is currently active and available for booking
    @Default(true) bool isActive,

    /// Timestamp when the puja record was created
    required DateTime createdAt,

    /// Timestamp when the puja record was last updated
    required DateTime updatedAt,

    /// Optional display title for the puja, may differ from the name
    String? title,

    /// Optional detailed description of the puja ceremony, its purpose and significance
    String? description,

    /// Array of JSON objects containing title and description of puja benefits
    @Default([]) List<Map<String, dynamic>> benefits,

    /// Array of JSON objects containing title and description of puja process steps
    @Default([]) List<Map<String, dynamic>> process,
  }) = _PujaEntity;
}
