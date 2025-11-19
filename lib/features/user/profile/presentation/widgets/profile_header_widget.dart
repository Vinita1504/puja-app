import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Profile header widget
///
/// Displays user profile picture, name, and phone number.
class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock user data
    const String userName = 'Rahul';
    const String phoneNumber = '+91 12345678945';

    return Container(
      padding: EdgeInsets.symmetric(vertical: 32.h),
      child: Column(
        children: [
          // Profile Picture
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 3.w,
              ),
            ),
            child: CircleAvatar(
              radius: 45.r,
              backgroundColor: context.colorScheme.primaryContainer,
              child: Icon(
                Icons.person,
                size: 60.sp,
                color: context.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          // User Name
          Text(
            userName,
            style: context.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 8.h),
          // Phone Number
          Text(
            phoneNumber,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
