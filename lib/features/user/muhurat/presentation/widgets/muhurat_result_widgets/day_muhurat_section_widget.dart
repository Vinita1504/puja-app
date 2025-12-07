import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Day Muhurat section widget
///
/// Section header with sun icon and "Day Muhurat" label.
class DayMuhuratSectionWidget extends StatelessWidget {
  const DayMuhuratSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, bottom: 12.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.wb_sunny,
              size: 20.sp,
              color: Colors.orange,
            ),
          ),
          SizedBox(width: 12.w),
          Text(
            'Day Muhurat',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

