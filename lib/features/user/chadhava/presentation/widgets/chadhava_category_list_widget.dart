import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/chadhava_list/chadhava_list_bloc.dart';
import '../bloc/chadhava_list/chadhava_list_event.dart';
import '../bloc/chadhava_list/chadhava_list_state.dart';
import 'chadhava_category_item_widget.dart';

/// Chadhava category list widget
///
/// Displays a horizontal scrollable list of category items.
/// Watches selected category from BLoC for active state.
class ChadhavaCategoryListWidget extends StatelessWidget {
  const ChadhavaCategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChadhavaListBloc, ChadhavaListState>(
      builder: (context, state) {
        final categories = state.maybeWhen(
          loaded: (_, __, ___, categories, ____) => categories,
          orElse: () => <String>[],
        );
        final selectedCategory = state.maybeWhen(
          loaded: (_, category, __, ___, ____) => category,
          orElse: () => 'All',
        );

        return LayoutBuilder(
          builder: (context, constraints) {
            // Calculate responsive height based on available space
            // Minimum height: 80, Preferred: 100, Maximum: 120
            final availableHeight = constraints.maxHeight;
            final containerHeight = availableHeight.isFinite && availableHeight > 0
                ? availableHeight.clamp(40.0, 100.0)
                : 100.h; // Fallback when height is unbounded

            return Container(
              height: containerHeight,
              color: context.colorScheme.surface,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
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
                    availableHeight: containerHeight,
                    onTap: () {
                      context.read<ChadhavaListBloc>().add(
                            ChadhavaListEvent.categorySelected(category: category),
                          );
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}

