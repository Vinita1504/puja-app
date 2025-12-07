import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Night Muhurat section widget
///
/// Section header with moon icon and "Night Muhurat" label.
class NightMuhuratSectionWidget extends StatelessWidget {
  const NightMuhuratSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: context.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.nightlight_round,
              size: 20.sp,
              color: context.colorScheme.primary,
            ),
          ),
          SizedBox(width: 12.w),
          Text(
            'Night Muhurat',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

