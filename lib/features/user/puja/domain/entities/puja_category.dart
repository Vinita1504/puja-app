import 'package:freezed_annotation/freezed_annotation.dart';

part 'puja_category.freezed.dart';

/// Puja category entity (Domain layer)
///
/// Represents a puja category with optional parent category for hierarchical organization.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class PujaCategoryEntity with _$PujaCategoryEntity {
  const factory PujaCategoryEntity({
    /// Unique identifier for the puja category, auto-generated using cuid
    required String id,

    /// Name of the category as displayed in the application
    required String name,

    /// Optional description explaining what pujas belong to this category
    String? description,

    /// URL-friendly unique identifier for the category used in routing
    required String slug,

    /// Whether this category is currently active and visible
    @Default(true) bool isActive,

    /// Timestamp when the category record was created
    required DateTime createdAt,

    /// Timestamp when the category record was last updated
    required DateTime updatedAt,

    /// Optional URL to an image representing this category
    String? imageUrl,

    /// Optional foreign key to parent category for hierarchical organization
    String? parentCategoryId,
  }) = _PujaCategoryEntity;
}
