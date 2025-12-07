import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Attribute item widget
///
/// Reusable component for displaying a label-value pair.
/// Used across all kundali result cards to maintain consistent styling.
class AttributeItemWidget extends StatelessWidget {
  /// Label text (e.g., "Gana", "Nakshatra")
  final String label;

  /// Value text (e.g., "Rakshas", "Ashlesha")
  final String value;

  const AttributeItemWidget({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

