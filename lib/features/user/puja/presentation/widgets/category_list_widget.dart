import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../data/models/puja_category_model.dart';
import '../bloc/puja_filter/puja_filter_bloc.dart';
import 'category_list_item_widget.dart';

/// Category list widget
///
/// Displays a vertical scrollable list of category items.
class CategoryListWidget extends StatelessWidget {
  /// List of categories to display
  final List<PujaCategoryModel> categories;

  const CategoryListWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    // Filter to show only parent categories (categories without parentCategoryId)
    final parentCategories = categories
        .where((category) => category.parentCategoryId == null)
        .toList();

    return BlocBuilder<PujaFilterBloc, PujaFilterState>(
      builder: (context, state) {
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
                isSelected: state.selectedCategoryId == category.id,
                onTap: () {
                  context
                      .read<PujaFilterBloc>()
                      .add(PujaFilterEvent.categorySelected(category.id));
                },
              );
            },
          ),
        );
      },
    );
  }
}
