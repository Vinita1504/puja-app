import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Dosha type selection widget
///
/// Displays two buttons for selecting dosha type: Mangal and Shankpal.
class DoshaTypeSelectionWidget extends StatelessWidget {
  /// Currently selected dosha type
  final String? selectedDoshaType;

  /// Callback when dosha type is selected
  final Function(String) onDoshaTypeSelected;

  const DoshaTypeSelectionWidget({
    super.key,
    this.selectedDoshaType,
    required this.onDoshaTypeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Dosha Type',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: _buildDoshaButton(
                  context,
                  'Mangal',
                  selectedDoshaType == 'Mangal',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: _buildDoshaButton(
                  context,
                  'Shankpal',
                  selectedDoshaType == 'Shankpal',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDoshaButton(
    BuildContext context,
    String label,
    bool isSelected,
  ) {
    if (isSelected) {
      return ElevatedButton(
        onPressed: () => onDoshaTypeSelected(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colorScheme.primary,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 0,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    } else {
      return OutlinedButton(
        onPressed: () => onDoshaTypeSelected(label),
        style: OutlinedButton.styleFrom(
          foregroundColor: context.colorScheme.onSurface,
          backgroundColor: Colors.white,
          side: BorderSide(
            color: context.colorScheme.outlineVariant.withValues(alpha: 0.5),
            width: 1.w,
          ),
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
  }
}

