import '../../domain/entities/puja_category.dart';

/// Puja category model (Data layer)
///
/// Data transfer object for puja categories.
class PujaCategoryModel {
  /// Unique identifier for the category
  final String id;

  /// Name of the category
  final String name;

  /// Path to the category icon image
  final String iconPath;

  /// List of subcategory names
  final List<String> subcategories;

  /// List of subcategory image paths (corresponds to subcategories list)
  final List<String> subcategoryImages;

  const PujaCategoryModel({
    required this.id,
    required this.name,
    required this.iconPath,
    required this.subcategories,
    required this.subcategoryImages,
  });

  /// Convert to entity (Domain layer)
  PujaCategoryEntity toEntity() {
    return PujaCategoryEntity(
      id: id,
      name: name,
      iconPath: iconPath,
      subcategories: subcategories,
      subcategoryImages: subcategoryImages,
    );
  }

  /// Create from entity
  factory PujaCategoryModel.fromEntity(PujaCategoryEntity entity) {
    return PujaCategoryModel(
      id: entity.id,
      name: entity.name,
      iconPath: entity.iconPath,
      subcategories: entity.subcategories,
      subcategoryImages: entity.subcategoryImages,
    );
  }

  /// Static list of hardcoded categories
  static List<PujaCategoryModel> get categories => [
        const PujaCategoryModel(
          id: 'festivals',
          name: 'Festivals',
          iconPath: 'assets/images/rudra-abhishek.png',
          subcategories: ['Diwali', 'Holi'],
          subcategoryImages: [
            'assets/images/rudra-abhishek.png',
            'assets/images/lakshmi-puja.png',
          ],
        ),
        const PujaCategoryModel(
          id: 'nitya_puja',
          name: 'Nitya puja',
          iconPath: 'assets/images/lakshmi-puja.png',
          subcategories: ['Daily Puja', 'Morning Puja', 'Evening Puja'],
          subcategoryImages: [
            'assets/images/daily-puja.png',
            'assets/images/morning-puja.png',
            'assets/images/evening-puja.png',
          ],
        ),
        const PujaCategoryModel(
          id: 'prosperity',
          name: 'Prosperity',
          iconPath: 'assets/images/vivah-puja.png',
          subcategories: ['Lakshmi Puja', 'Ganesh Puja', 'Kuber Puja'],
          subcategoryImages: [
            'assets/images/lakshmi-puja.png',
            'assets/images/ganesh-puja.png',
            'assets/images/kuber-puja.png',
          ],
        ),
        const PujaCategoryModel(
          id: 'dosh_puja',
          name: 'Dosh puja',
          iconPath: 'assets/images/mangal-dosh.png',
          subcategories: ['Shani Dosh', 'Mangal Dosh', 'Rahu Dosh'],
          subcategoryImages: [
            'assets/images/shani-dosh.png',
            'assets/images/mangal-dosh.png',
            'assets/images/rahu-dosh.png',
          ],
        ),
      ];
}

