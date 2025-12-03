import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Mangal suggestion card widget
///
/// Displays a simple recommendation card suggesting to consult an astrologer.
class MangalSuggestionCardWidget extends StatelessWidget {
  const MangalSuggestionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(16.r),
        
       
      ),
      child: Row(
        children: [
          Icon(
            Icons.lightbulb_outline,
            color: context.colorScheme.primary,
            size: 20.sp,
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              'Recommended to consult an astrologer for deeper insights.',
              style: context.textTheme.bodySmall?.copyWith(
                color: context.colorScheme.onSurface,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

