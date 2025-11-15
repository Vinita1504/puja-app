import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/puja_category.dart';

part 'puja_category_model.freezed.dart';
part 'puja_category_model.g.dart';

/// Puja category model (Data layer)
///
/// Data transfer object for puja categories.
@freezed
class PujaCategoryModel with _$PujaCategoryModel {
  const factory PujaCategoryModel({
    /// Unique identifier for the puja category
    required String id,

    /// Name of the category as displayed in the application
    required String name,

    /// Optional description explaining what pujas belong to this category
    String? description,

    /// URL-friendly unique identifier for the category used in routing
    required String slug,

    /// Whether this category is currently active and visible
    @Default(true) @JsonKey(name: 'is_active') bool isActive,

    /// Timestamp when the category record was created
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Timestamp when the category record was last updated
    @JsonKey(name: 'updated_at') required DateTime updatedAt,

    /// Optional URL to an image representing this category
    @JsonKey(name: 'image_url') String? imageUrl,

    /// Optional foreign key to parent category for hierarchical organization
    @JsonKey(name: 'parent_category_id') String? parentCategoryId,
  }) = _PujaCategoryModel;

  const PujaCategoryModel._();

  /// Convert to entity (Domain layer)
  PujaCategoryEntity toEntity() {
    return PujaCategoryEntity(
      id: id,
      name: name,
      description: description,
      slug: slug,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
      imageUrl: imageUrl,
      parentCategoryId: parentCategoryId,
    );
  }

  /// Create from entity
  factory PujaCategoryModel.fromEntity(PujaCategoryEntity entity) {
    return PujaCategoryModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      slug: entity.slug,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      imageUrl: entity.imageUrl,
      parentCategoryId: entity.parentCategoryId,
    );
  }

  /// Create from JSON
  factory PujaCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$PujaCategoryModelFromJson(json);

  // Mock data for development and testing
  static final DateTime _mockTimestamp = DateTime(2024, 1, 1);

  /// Mock categories including both parent and child categories
  static List<PujaCategoryModel> get mockCategories => [
        // Parent categories
        PujaCategoryModel(
          id: 'festivals',
          name: 'Festivals',
          slug: 'festivals',
          description: 'Festival-related pujas and ceremonies',
          imageUrl: 'assets/images/rudra-abhishek.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'nitya_puja',
          name: 'Nitya puja',
          slug: 'nitya-puja',
          description: 'Daily puja ceremonies',
          imageUrl: 'assets/images/lakshmi-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'prosperity',
          name: 'Prosperity',
          slug: 'prosperity',
          description: 'Pujas for prosperity and wealth',
          imageUrl: 'assets/images/vivah-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'dosh_puja',
          name: 'Dosh puja',
          slug: 'dosh-puja',
          description: 'Pujas to remove doshas',
          imageUrl: 'assets/images/mangal-dosh.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        // Child categories - Festivals
        PujaCategoryModel(
          id: 'diwali',
          name: 'Diwali',
          slug: 'diwali',
          description: 'Diwali festival puja',
          parentCategoryId: 'festivals',
          imageUrl: 'assets/images/rudra-abhishek.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'holi',
          name: 'Holi',
          slug: 'holi',
          description: 'Holi festival puja',
          parentCategoryId: 'festivals',
          imageUrl: 'assets/images/lakshmi-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        // Child categories - Nitya puja
        PujaCategoryModel(
          id: 'daily_puja',
          name: 'Daily Puja',
          slug: 'daily-puja',
          description: 'Daily puja ceremony',
          parentCategoryId: 'nitya_puja',
          imageUrl: 'assets/images/daily-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'morning_puja',
          name: 'Morning Puja',
          slug: 'morning-puja',
          description: 'Morning puja ceremony',
          parentCategoryId: 'nitya_puja',
          imageUrl: 'assets/images/morning-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'evening_puja',
          name: 'Evening Puja',
          slug: 'evening-puja',
          description: 'Evening puja ceremony',
          parentCategoryId: 'nitya_puja',
          imageUrl: 'assets/images/evening-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        // Child categories - Prosperity
        PujaCategoryModel(
          id: 'lakshmi_puja',
          name: 'Lakshmi Puja',
          slug: 'lakshmi-puja',
          description: 'Lakshmi puja for wealth and prosperity',
          parentCategoryId: 'prosperity',
          imageUrl: 'assets/images/lakshmi-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'ganesh_puja',
          name: 'Ganesh Puja',
          slug: 'ganesh-puja',
          description: 'Ganesh puja for success and prosperity',
          parentCategoryId: 'prosperity',
          imageUrl: 'assets/images/ganesh-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'kuber_puja',
          name: 'Kuber Puja',
          slug: 'kuber-puja',
          description: 'Kuber puja for financial prosperity',
          parentCategoryId: 'prosperity',
          imageUrl: 'assets/images/kuber-puja.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        // Child categories - Dosh puja
        PujaCategoryModel(
          id: 'shani_dosh',
          name: 'Shani Dosh',
          slug: 'shani-dosh',
          description: 'Puja to remove Shani dosh',
          parentCategoryId: 'dosh_puja',
          imageUrl: 'assets/images/shani-dosh.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'mangal_dosh',
          name: 'Mangal Dosh',
          slug: 'mangal-dosh',
          description: 'Puja to remove Mangal dosh',
          parentCategoryId: 'dosh_puja',
          imageUrl: 'assets/images/mangal-dosh.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
        PujaCategoryModel(
          id: 'rahu_dosh',
          name: 'Rahu Dosh',
          slug: 'rahu-dosh',
          description: 'Puja to remove Rahu dosh',
          parentCategoryId: 'dosh_puja',
          imageUrl: 'assets/images/rahu-dosh.png',
          createdAt: _mockTimestamp,
          updatedAt: _mockTimestamp,
        ),
      ];

  /// Mock parent categories (categories without parentCategoryId)
  static List<PujaCategoryModel> get mockParentCategories =>
      mockCategories.where((category) => category.parentCategoryId == null).toList();

  /// Get child categories for a given parent category ID
  static List<PujaCategoryModel> getChildCategories(String parentId) =>
      mockCategories.where((category) => category.parentCategoryId == parentId).toList();
}

