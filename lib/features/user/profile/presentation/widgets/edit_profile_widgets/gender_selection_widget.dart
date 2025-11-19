import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Gender selection widget
///
/// Displays gender options using SegmentedButton for improved UX.
/// Uses Material 3 design with proper theming.
class GenderSelectionWidget extends StatelessWidget {
  /// Currently selected gender value
  final String? selectedGender;

  /// Callback when gender is selected
  final ValueChanged<String> onGenderSelected;

  const GenderSelectionWidget({
    super.key,
    required this.selectedGender,
    required this.onGenderSelected,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Gender *',
          style: textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: colorScheme.outlineVariant.withValues(alpha: 0.3),
              width: 1.w,
            ),
          ),
          child: SegmentedButton<String>(
            segments: const [
              ButtonSegment<String>(value: 'Male', label: Text('Male')),
              ButtonSegment<String>(value: 'Female', label: Text('Female')),
              ButtonSegment<String>(value: 'Other', label: Text('Other')),
            ],
            selected: selectedGender != null ? {selectedGender!} : <String>{},
            emptySelectionAllowed: true,
            onSelectionChanged: (Set<String> newSelection) {
              if (newSelection.isNotEmpty) {
                onGenderSelected(newSelection.first);
              } else {
                // Handle deselection if needed
                onGenderSelected('');
              }
            },
            style: SegmentedButton.styleFrom(
              selectedBackgroundColor: colorScheme.primary,
              selectedForegroundColor: colorScheme.onPrimary,
              backgroundColor: Colors.transparent,
              foregroundColor: colorScheme.onSurface,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              textStyle: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
