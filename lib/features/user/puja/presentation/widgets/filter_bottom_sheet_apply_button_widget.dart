import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../providers/puja_filter_provider.dart';

/// Filter bottom sheet apply button widget
///
/// Displays the Apply button at the bottom of the filter sheet.
class FilterBottomSheetApplyButtonWidget extends ConsumerWidget {
  /// Callback when Apply button is tapped
  final Function(Set<String>) onApplyTap;

  const FilterBottomSheetApplyButtonWidget({
    super.key,
    required this.onApplyTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSubcategories = ref.watch(selectedSubcategoriesProvider);
    final isEnabled = selectedSubcategories.isNotEmpty;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Align(
        alignment: Alignment.centerRight,
        child: FilledButton(
          onPressed: isEnabled
              ? () {
                  onApplyTap(selectedSubcategories);
                }
              : null,
          style: FilledButton.styleFrom(
            backgroundColor: context.colorScheme.primary,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 10.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          child: Text(
            'Apply',
            style: context.textTheme.titleSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

