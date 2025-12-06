import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Panchang timing card widget
///
/// Displays a single timing entry with label and time range.
class PanchangTimingCardWidget extends StatelessWidget {
  final String label;
  final String timing;
  final Color cardColor;

  const PanchangTimingCardWidget({
    super.key,
    required this.label,
    required this.timing,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Text(
            '$label:',
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              timing,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

