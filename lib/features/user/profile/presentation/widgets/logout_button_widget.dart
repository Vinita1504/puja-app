import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Logout button widget
///
/// Special styled logout button with icon and text.
class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showLogoutDialog(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: context.colorScheme.outline.withValues(alpha: 0.1),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/logout.png',
              width: 24.w,
              height: 24.h,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.logout,
                  size: 24.sp,
                  color: context.colorScheme.primary,
                );
              },
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(
                'Logout',
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              // TODO: Implement logout functionality
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
