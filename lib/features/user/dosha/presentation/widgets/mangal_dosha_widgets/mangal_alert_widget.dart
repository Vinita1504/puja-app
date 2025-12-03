import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Mangal alert widget
///
/// Displays a small alert message when Mangal dosha is detected.
/// Positioned at the top without background.
class MangalAlertWidget extends StatelessWidget {
  const MangalAlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 0),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Row(
        children: [
          Icon(
            Icons.warning_amber_rounded,
            color: context.colorScheme.error,
            size: 16.sp,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              'Mangal Dosha Detected',
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colorScheme.error,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

