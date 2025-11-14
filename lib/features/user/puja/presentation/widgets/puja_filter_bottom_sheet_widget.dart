import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../data/models/puja_category_model.dart';
import '../providers/puja_filter_provider.dart';
import 'filter_bottom_sheet_apply_button_widget.dart';
import 'filter_bottom_sheet_content_widget.dart';
import 'filter_bottom_sheet_header_widget.dart';

/// Puja filter bottom sheet widget
///
/// Main widget for the filter bottom sheet that displays categories and subcategories.
class PujaFilterBottomSheetWidget extends ConsumerWidget {
  /// Callback when Apply is tapped
  final Function(Set<String>) onApply;

  /// Optional initial selected subcategories
  final Set<String>? initialSelectedSubcategories;

  const PujaFilterBottomSheetWidget({
    super.key,
    required this.onApply,
    this.initialSelectedSubcategories,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = PujaCategoryModel.categories;

    return Container(
      constraints: BoxConstraints(
        maxHeight: context.screenHeight * 0.75,
        minHeight: 400.h,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              FilterBottomSheetHeaderWidget(
                onCloseTap: () {
                  // Reset providers before closing
                  ref.read(selectedCategoryProvider.notifier).state = null;
                  ref.read(selectedSubcategoriesProvider.notifier).state = <String>{};
                  Navigator.of(context).pop();
                },
              ),
              Expanded(
                child: FilterBottomSheetContentWidget(categories: categories),
              ),
              FilterBottomSheetApplyButtonWidget(
                onApplyTap: (selectedSubcategories) {
                  // Don't reset providers here - let the caller handle it
                  Navigator.of(context).pop(selectedSubcategories);
                },
              ),
            ],
          );
        },
      ),
    );
  }

  /// Static method to show the filter bottom sheet
  ///
  /// Returns a Future with selected subcategories or null if dismissed.
  static Future<Set<String>?> show(
    BuildContext context, {
    Set<String>? initialSelectedSubcategories,
  }) {
    // Reset providers before showing
    final container = ProviderScope.containerOf(context, listen: false);
    container.read(selectedCategoryProvider.notifier).state = null;
    container.read(selectedSubcategoriesProvider.notifier).state =
        initialSelectedSubcategories ?? <String>{};

    final result = showModalBottomSheet<Set<String>>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      clipBehavior: Clip.antiAlias,
      builder: (context) => PujaFilterBottomSheetWidget(
        onApply: (selectedSubcategories) {
          Navigator.of(context).pop(selectedSubcategories);
        },
        initialSelectedSubcategories: initialSelectedSubcategories,
      ),
    );

    result.whenComplete(() {
      // Reset providers when bottom sheet is dismissed (handles drag-down dismissal)
      try {
        final resetContainer = ProviderScope.containerOf(context, listen: false);
        resetContainer.read(selectedCategoryProvider.notifier).state = null;
        resetContainer.read(selectedSubcategoriesProvider.notifier).state = <String>{};
      } catch (e) {
        // Context might be invalid, ignore
      }
    });

    return result;
  }
}

