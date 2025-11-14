import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../data/models/puja_category_model.dart';
import '../providers/puja_filter_provider.dart';
import 'subcategory_card_widget.dart';

/// Subcategory grid widget
///
/// Displays a grid of subcategory cards based on selected category.
class SubcategoryGridWidget extends ConsumerWidget {
  /// List of all categories
  final List<PujaCategoryModel> categories;

  const SubcategoryGridWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategoryId = ref.watch(selectedCategoryProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: Text(
            'Select category',
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              fontSize: 14.sp,
            ),
          ),
        ),
        if (selectedCategoryId == null)
          Expanded(
            child: Center(
              child: Text(
                'Select category',
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                ),
              ),
            ),
          )
        else
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final selectedCategory = categories.firstWhere(
                  (category) => category.id == selectedCategoryId,
                  orElse: () => categories.first,
                );

                // Calculate responsive column count based on available width
                final itemWidth = 80.w;
                final spacing = 10.w;
                final crossAxisCount = ((constraints.maxWidth - (12.w * 2)) / (itemWidth + spacing)).floor().clamp(2, 4);
                final availableWidth = constraints.maxWidth - (12.w * 2);
                final totalSpacing = spacing * (crossAxisCount - 1);
                final itemWidthCalculated = (availableWidth - totalSpacing) / crossAxisCount;

                return Padding(
                  padding: EdgeInsets.all(12.w),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Wrap(
                      spacing: spacing,
                      runSpacing: 12.h,
                      alignment: WrapAlignment.start,
                      children: List.generate(
                        selectedCategory.subcategories.length,
                        (index) => SizedBox(
                          width: itemWidthCalculated,
                          child: SubcategoryCardWidget(
                            name: selectedCategory.subcategories[index],
                            imagePath: selectedCategory.subcategoryImages[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}

