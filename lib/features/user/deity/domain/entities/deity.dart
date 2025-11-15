import 'package:freezed_annotation/freezed_annotation.dart';

part 'deity.freezed.dart';

/// Deity entity (Domain layer)
///
/// Represents a deity in the system.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class DeityEntity with _$DeityEntity {
  const factory DeityEntity({
    /// Unique identifier for the deity, auto-generated using cuid
    required String id,

    /// Name of the deity, must be unique across all deities
    required String name,

    /// Optional mythological or historical story associated with the deity
    String? story,

    /// Optional URL to the main image of the deity
    String? imageUrl,

    /// Optional URL to a smaller thumbnail version of the deity image
    String? thumbnailUrl,

    /// Whether this deity is currently active and visible in the system
    @Default(true) bool isActive,

    /// Timestamp when the deity record was created
    required DateTime createdAt,

    /// Timestamp when the deity record was last updated
    required DateTime updatedAt,
  }) = _DeityEntity;
}

