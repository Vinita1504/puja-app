import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../data/models/puja_category_model.dart';
import '../providers/puja_filter_provider.dart';
import 'category_list_item_widget.dart';

/// Category list widget
///
/// Displays a vertical scrollable list of category items.
class CategoryListWidget extends ConsumerWidget {
  /// List of categories to display
  final List<PujaCategoryModel> categories;

  const CategoryListWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategoryId = ref.watch(selectedCategoryProvider);

    // Filter to show only parent categories (categories without parentCategoryId)
    final parentCategories = categories
        .where((category) => category.parentCategoryId == null)
        .toList();

    return Container(
      width: 100.w,
      constraints: BoxConstraints(maxWidth: 120.w),
      color: context.colorScheme.surfaceContainerLowest,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 6.h),
        itemCount: parentCategories.length,
        itemBuilder: (context, index) {
          final category = parentCategories[index];
          return CategoryListItemWidget(
            category: category,
            isSelected: selectedCategoryId == category.id,
            onTap: () {
              ref.read(selectedCategoryProvider.notifier).state = category.id;
            },
          );
        },
      ),
    );
  }
}

