import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../data/models/puja_category_model.dart';
import 'category_list_widget.dart';
import 'subcategory_grid_widget.dart';

/// Filter bottom sheet content widget
///
/// Combines the category list and subcategory grid in a two-column layout.
class FilterBottomSheetContentWidget extends StatelessWidget {
  /// List of all categories
  final List<PujaCategoryModel> categories;

  const FilterBottomSheetContentWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryListWidget(categories: categories),
        VerticalDivider(
          width: 1.w,
          color: context.colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
        Expanded(child: SubcategoryGridWidget(categories: categories)),
      ],
    );
  }
}
