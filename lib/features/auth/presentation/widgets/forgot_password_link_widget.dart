import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/context_extension.dart';

/// Forgot password link widget
///
/// Displays a centered "Forgot password?" link that can be tapped
/// to navigate to the forgot password page.
class ForgotPasswordLinkWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgotPasswordLinkWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        ),
        child: Text(
          'Forgot password?',
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.outline,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
