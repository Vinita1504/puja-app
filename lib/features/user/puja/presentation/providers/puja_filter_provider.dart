import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for managing selected main category in filter bottom sheet
///
/// Uses StateProvider to manage the selected category ID.
/// Default value is null (no category selected).
final selectedCategoryProvider = StateProvider<String?>((ref) => null);

/// Provider for managing selected subcategories in filter bottom sheet
///
/// Uses StateProvider to manage the set of selected subcategory names.
/// Default value is empty set.
final selectedSubcategoriesProvider = StateProvider<Set<String>>((ref) => <String>{});

