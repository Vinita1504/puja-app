import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Home V2 special event widget
///
/// Displays a special event highlight with event name, date, and illustration.
/// Used in the orange background section of the home page v2.
class HomeV2SpecialEventWidget extends StatelessWidget {
  const HomeV2SpecialEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 4.h, bottom: 0.h),
      child: Row(
        children: [
          // Left side: Text content
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Masik Durga Ashtami Special',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorScheme.onPrimary,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 8.h),
                Center(
                  child: Text(
                    '28 November 2025, Friday',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.onPrimary,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.w),
          // Right side: Goddess Durga illustration
          Expanded(
            flex: 2,
            child: Container(
              height: 110.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  'assets/images/durga-maa.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: context.colorScheme.surfaceContainerLowest,
                      child: Icon(
                        Icons.image_not_supported,
                        size: 48.sp,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
