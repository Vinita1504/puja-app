/// Puja category entity (Domain layer)
///
/// Represents a main category with its subcategories.
/// Pure business logic, no dependencies on external frameworks.
class PujaCategoryEntity {
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

  const PujaCategoryEntity({
    required this.id,
    required this.name,
    required this.iconPath,
    required this.subcategories,
    required this.subcategoryImages,
  });
}

