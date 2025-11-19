import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Quick action button widget
///
/// Individual button for quick actions with icon and title.
class QuickActionButtonWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;

  const QuickActionButtonWidget({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: context.colorScheme.outline.withValues(alpha: 0.1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 32.w,
              height: 32.h,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.help_outline,
                  size: 32.sp,
                  color: context.colorScheme.primary,
                );
              },
            ),
            SizedBox(width: 16.w),
            Text(
              title,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
