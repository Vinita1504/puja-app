import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../providers/chadhava_providers.dart';
import 'chadhava_category_item_widget.dart';

/// Chadhava category list widget
///
/// Displays a horizontal scrollable list of category items.
/// Watches selectedCategoryProvider for active state.
class ChadhavaCategoryListWidget extends ConsumerWidget {
  const ChadhavaCategoryListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(chadhavaCategoriesProvider);
    final selectedCategory = ref.watch(selectedCategoryProvider);

    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = selectedCategory == category;

          // Map category names to icon paths
          String? iconPath;
          if (category == 'All') {
            // Use Om symbol or default icon
            iconPath = null; // Will show default icon
          } else if (category == 'Kartik Purnima') {
            iconPath = null; // Will show default icon
          } else if (category == 'Ahuti Seva') {
            iconPath = 'assets/images/shivji.png';
          } else if (category == 'Shani Temp') {
            iconPath = 'assets/images/temple.png';
          }

          return ChadhavaCategoryItemWidget(
            categoryName: category,
            iconPath: iconPath,
            isSelected: isSelected,
            onTap: () {
              ref.read(selectedCategoryProvider.notifier).state = category;
            },
          );
        },
      ),
    );
  }
}

