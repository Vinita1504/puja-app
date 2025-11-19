import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Profile menu item widget
///
/// Displays a menu item with an icon from assets and text.
/// Used in the profile page for menu options like My Puja, Language, etc.
class ProfileMenuItemWidget extends StatelessWidget {
  /// Icon asset path
  final String iconPath;

  /// Menu item title
  final String title;

  /// Callback when item is tapped
  final VoidCallback? onTap;

  /// Whether to show a trailing arrow icon
  final bool showTrailing;

  const ProfileMenuItemWidget({
    super.key,
    required this.iconPath,
    required this.title,
    this.onTap,
    this.showTrailing = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: context.colorScheme.outline.withValues(alpha: 0.1),
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            // Icon
            Image.asset(
              iconPath,
              width: 24.w,
              height: 24.h,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.help_outline,
                  size: 24.sp,
                  color: context.colorScheme.primary,
                );
              },
            ),
            SizedBox(width: 16.w),
            // Title
            Expanded(
              child: Text(
                title,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                ),
              ),
            ),
            // Trailing arrow
            if (showTrailing)
              Icon(
                Icons.chevron_right,
                size: 24.sp,
                color: context.colorScheme.onSurfaceVariant,
              ),
          ],
        ),
      ),
    );
  }
}
